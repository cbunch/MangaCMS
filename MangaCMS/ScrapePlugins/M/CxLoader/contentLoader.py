
import settings
import os
import os.path

import nameTools as nt

import time

import urllib.parse
import html.parser
import zipfile
import runStatus
import traceback
import bs4
import re
import MangaCMS.ScrapePlugins.RetreivalBase

from concurrent.futures import ThreadPoolExecutor

import MangaCMS.cleaner.processDownload

class ContentLoader(MangaCMS.ScrapePlugins.RetreivalBase.RetreivalBase):



	loggerPath = "Main.Manga.Cx.Cl"
	pluginName = "CXC Scans Content Retreiver"
	tableKey = "cx"
	dbName = settings.DATABASE_DB_NAME
	tableName = "MangaItems"


	retreivalThreads = 2

	def getLinkFile(self, fileUrl):
		pgctnt, pghandle = self.wg.getpage(fileUrl, returnMultiple = True, addlHeaders={'Referer': "http://manga.cxcscans.com/directory/"})
		pageUrl = pghandle.geturl()
		hName = urllib.parse.urlparse(pageUrl)[2].split("/")[-1]
		self.log.info( "HName: %s", hName, )
		self.log.info( "Size = %s", len(pgctnt))


		return pgctnt, hName


	def getLink(self, link):
		sourceUrl  = link["sourceUrl"]
		seriesName = link["seriesName"]
		originFileName = link["originName"]

		self.updateDbEntry(sourceUrl, dlState=1)
		self.log.info("Downloading = '%s', '%s'", seriesName, originFileName)
		dlPath, newDir = self.locateOrCreateDirectoryForSeries(seriesName)

		if link["flags"] == None:
			link["flags"] = ""

		if newDir:
			self.updateDbEntry(sourceUrl, flags=" ".join([link["flags"], "haddir"]))



		try:
			content, headerName = self.getLinkFile(sourceUrl)
		except:
			self.log.error("Unrecoverable error retrieving content %s", link)
			self.log.error("Traceback: %s", traceback.format_exc())

			self.updateDbEntry(sourceUrl, dlState=-1)
			return



		headerName = urllib.parse.unquote(headerName)

		fName = "%s - %s" % (originFileName, headerName)
		fName = nt.makeFilenameSafe(fName)

		fName, ext = os.path.splitext(fName)
		fName = "%s [CXC Scans]%s" % (fName, ext)

		fqFName = os.path.join(dlPath, fName)
		self.log.info( "SaveName = %s", fqFName)


		loop = 1
		while os.path.exists(fqFName):
			fName, ext = os.path.splitext(fName)
			fName = "%s (%d)%s" % (fName, loop,  ext)
			fqFName = os.path.join(link["targetDir"], fName)
			loop += 1
		self.log.info("Writing file")



		filePath, fileName = os.path.split(fqFName)

		try:
			with open(fqFName, "wb") as fp:
				fp.write(content)
		except TypeError:
			self.log.error("Failure trying to retreive content from source %s", sourceUrl)
			self.updateDbEntry(sourceUrl, dlState=-4, downloadPath=filePath, fileName=fileName)
			return
		#self.log.info( filePath)



		dedupState = MangaCMS.cleaner.processDownload.processDownload(seriesName, fqFName, deleteDups=True, rowId=link['dbId'])

		self.log.info( "Done")
		self.updateDbEntry(sourceUrl, dlState=2, downloadPath=filePath, fileName=fileName, tags=dedupState)
		return

