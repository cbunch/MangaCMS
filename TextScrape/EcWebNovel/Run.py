


from .Scrape import Scrape

import ScrapePlugins.RunBase


class Runner(ScrapePlugins.RunBase.ScraperBase):
	loggerPath = "Main.EcWebNovel.Run"

	pluginName = "EcWebNovelScrape"


	def _go(self):

		self.log.info("Checking EcWebNovel for updates")
		scraper = Scrape()
		scraper.crawl()


def test():
	import logSetup
	logSetup.initLogging()
	scrp = Runner()
	scrp.go()
	# scrp.retreiveItemFromUrl(scrp.startUrl)
	# new = gdp.GDocExtractor.getDriveFileUrls('https://drive.google.com/folderview?id=0B-x_RxmzDHegRk5iblp4alZmSkU&usp=sharing')


if __name__ == "__main__":
	test()

