<%!

#
# Module level members can be accessed via
# {modulename}.attr.{membername}
#

#import colorsys

# List of visually distinct colours
# Note: these /will/ suck for colour-blind people. Sorry about that.
# TODO: Generate these in an automated manner. Somehow
# Creating visually distinct colours is /hard/
spacedColours = [
	(0xff, 0x8c, 0x8c),
	(0xff, 0xab, 0x8c),
	(0xff, 0xba, 0x8c),
	(0x8c, 0xff, 0xab),
	(0xf7, 0xff, 0x8c),
	(0x8c, 0xff, 0xd9),
	(0x8c, 0xff, 0xf7),
	(0xff, 0xd9, 0x8c),
	(0x9c, 0x8c, 0xff),
	(0xc9, 0xff, 0x8c),
	(0xd9, 0x8c, 0xff),
	(0x8c, 0xba, 0xff),
	(0xff, 0x8c, 0xe8),
	(0x8c, 0xe8, 0xff),
	(0xff, 0x8c, 0xba)
]


sidebarItemList = [
		{
			"num"           : 1,
			'dbKey'         : "SkLoader",
			'name'          : "Starkana",
			'dictKey'       : "sk",
			'cssClass'      : "skId",
			'showOnHome'    : False,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},

		{
			"num"           : 2,
			'dbKey'         : "CzLoader",
			'name'          : "Crazy's",
			'dictKey'       : "cz",
			'cssClass'      : "czId",
			'showOnHome'    : True,
			'renderSideBar' : False,
			'genRow'        : True,
			'type'          : 'Manga'
		},

		{
			"num"           : 3,
			'dbKey'         : "MbLoader",
			'name'          : "MangaBaby",
			'dictKey'       : "mb",
			'cssClass'      : "mbId",
			'showOnHome'    : True,
			'renderSideBar' : False,
			'genRow'        : True,
			'type'          : 'Manga-defunct'
		},

		{
			"num"           : 4,
			'dbKey'         : "BtLoader",
			'name'          : "Batoto",
			'dictKey'       : "bt",
			'cssClass'      : "btId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},

		{
			"num"           : 5,
			'dbKey'         : "JzLoader",
			'name'          : "Japanzai",
			'dictKey'       : "jz",
			'cssClass'      : "jzId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},

		{
			"num"           : 6,
			'dbKey'         : "McLoader",
			'name'          : "MangaCow",
			'dictKey'       : "mc",
			'cssClass'      : "mcId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},

		{
			"num"           : 7,
			'dbKey'         : "CxLoader",
			'name'          : "CXC Scans",
			'dictKey'       : "cx",
			'cssClass'      : "cxId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},

		{
			"num"           : 8,
			'dbKey'         : "MjLoader",
			'name'          : "MangaJoy",
			'dictKey'       : "mj",
			'cssClass'      : "mjId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},

		{
			"num"           : 9,
			'dbKey'         : "RhLoader",
			'name'          : "RedHawk",
			'dictKey'       : "rh",
			'cssClass'      : "rhId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},

		{
			"num"           : 10,
			'dbKey'         : "LmLoader",
			'name'          : "LoneManga",
			'dictKey'       : "lm",
			'cssClass'      : "lmId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},

		{
			"num"           : 11,
			'dbKey'         : "WtLoader",
			'name'          : "Webtoon",
			'dictKey'       : "wt",
			'cssClass'      : "wtId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},

		{
			"num"           : 12,
			'dbKey'         : "DyLoader",
			'name'          : "Dynasty",
			'dictKey'       : "dy",
			'cssClass'      : "dyId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},


		{
			"num"           : 13,
			'dbKey'         : "KissLoader",
			'name'          : "KissManga",
			'dictKey'       : "ki",
			'cssClass'      : "kiId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},

		{
			"num"           : 14,
			'dbKey'         : "CrunchyRoll",
			'name'          : "CrunchyRoll",
			'dictKey'       : "cr",
			'cssClass'      : "crId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},
		{
			"num"           : 15,
			'dbKey'         : "RoseliaLoader",
			'name'          : "Roselia",
			'dictKey'       : "rs",
			'cssClass'      : "rsId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},
		{
			"num"           : 16,
			'dbKey'         : "SenseLoader",
			'name'          : "Sense",
			'dictKey'       : "se",
			'cssClass'      : "seId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},
		{
			"num"           : 16,
			'dbKey'         : "ShoujoSense",
			'name'          : "ShoujoSense",
			'dictKey'       : "sj",
			'cssClass'      : "sjId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},
		{
			"num"           : 17,
			'dbKey'         : "VortexLoader",
			'name'          : "Vortex",
			'dictKey'       : "vx",
			'cssClass'      : "vxId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},

		{
			"num"           : 17,
			'dbKey'         : "TwistedHel",
			'name'          : "TwistedHel",
			'dictKey'       : "th",
			'cssClass'      : "thId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},

		{
			"num"           : 18,
			'dbKey'         : "Casanova",
			'name'          : "Casanova",
			'dictKey'       : "cs",
			'cssClass'      : "csId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},

		{
			"num"           : 19,
			'dbKey'         : "MsLoader",
			'name'          : "MangaStrm",
			'dictKey'       : "ms",
			'cssClass'      : "msId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},
		{
			"num"           : 20,
			'dbKey'         : "MangatopiaLoader",
			'name'          : "Mangatopia",
			'dictKey'       : "mp",
			'cssClass'      : "mpId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},
		{
			"num"           : 21,
			'dbKey'         : "WrLoader",
			'name'          : "WebTnsRdr",
			'dictKey'       : "wr",
			'cssClass'      : "wrId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},


		{
			"num"           : 22,
			'dbKey'         : "IrcEnqueue",
			'name'          : "IRC XDCC",
			'dictKey'       : "irc-irh",
			'cssClass'      : "ircId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},
		{
			"num"           : 23,
			'dbKey'         : "IrcEnqueue",
			'name'          : "IRC Trigger",
			'dictKey'       : "irc-trg",
			'cssClass'      : "ircId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},

		{
			"num"           : 24,
			'dbKey'         : "kawaii",
			'name'          : "Kawaii Scans",
			'dictKey'       : "kw",
			'cssClass'      : "kawaii",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},


		{
			"num"           : 25,
			'dbKey'         : "sura",
			'name'          : "Sura's Place",
			'dictKey'       : "sura",
			'cssClass'      : "sura",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},
		{
			"num"           : 26,
			'dbKey'         : "mbx",
			'name'          : "MangaBox",
			'dictKey'       : "mbx",
			'cssClass'      : "mbx",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},
		{
			"num"           : 27,
			'dbKey'         : "gos",
			'name'          : "GosLoader",
			'dictKey'       : "gos",
			'cssClass'      : "gos",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},
		{
			"num"           : 28,
			'dbKey'         : "ym",
			'name'          : "YoManga",
			'dictKey'       : "ym",
			'cssClass'      : "ym",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},
		{
			"num"           : 29,
			'dbKey'         : "ms",
			'name'          : "MangaStrm",
			'dictKey'       : "ms",
			'cssClass'      : "ms",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},
		{
			"num"           : 33,
			'dbKey'         : "meraki",
			'name'          : "Meraki",
			'dictKey'       : "meraki",
			'cssClass'      : "meraki",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},

		{
			"num"           : 30,
			'dbKey'         : "MkLoader",
			'name'          : "Madokami",
			'dictKey'       : "mk",
			'cssClass'      : "mkId",
			'showOnHome'    : False,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Manga'
		},

		{
			"num"           : 31,
			'dbKey'         : "BuMon",
			'name'          : "MU Mon",
			'dictKey'       : None,
			'cssClass'      : "buId",
			'showOnHome'    : False,
			'renderSideBar' : True,
			'genRow'        : False,
			'type'          : 'Info'
		},

		###################################################################################################################

		{
			"num"           : 32,
			'dbKey'         : False,
			'name'          : "Mt Mon",
			'dictKey'       : None,
			'cssClass'      : "mtMonId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : False,
			'type'          : 'Manga-defunct'
		},

		###################################################################################################################

		{
			"num"           : 100,
			'dbKey'         : "DjMoe",
			'name'          : "DjMoe",
			'dictKey'       : "djm",
			'cssClass'      : "djmId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Porn'
		},

		{
			"num"           : 101,
			'dbKey'         : "Pururin",
			'name'          : "Pururin",
			'dictKey'       : "pu",
			'cssClass'      : "puId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Porn'
		},

		{
			"num"           : 102,
			'dbKey'         : "SadPanda",
			'name'          : "ExHentai",
			'dictKey'       : "sp",
			'cssClass'      : "spId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Porn'
		},

		{
			"num"           : 103,
			'dbKey'         : "H-Browse",
			'name'          : "H-Browse",
			'dictKey'       : "hb",
			'cssClass'      : "hbId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Porn'
		},

		{
			"num"           : 104,
			'dbKey'         : "FkLoader",
			'name'          : "Fakku",
			'dictKey'       : "fk",
			'cssClass'      : "fkId",
			'showOnHome'    : False,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Porn'
		},

		{
			"num"           : 105,
			'dbKey'         : "NHentai",
			'name'          : "NHentai",
			'dictKey'       : "nh",
			'cssClass'      : "nhId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Porn'
		},

		{
			"num"           : 106,
			'dbKey'         : "EmLoader",
			'name'          : "ExHenMado",
			'dictKey'       : "em",
			'cssClass'      : "emId",
			'showOnHome'    : True,
			'renderSideBar' : False,
			'genRow'        : True,
			'type'          : 'Porn'
		},


		{
			"num"           : 107,
			'dbKey'         : "Tadanohito",
			'name'          : "Tadano",
			'dictKey'       : "ta",
			'cssClass'      : "taId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Porn'
		},


		{
			"num"           : 108,
			'dbKey'         : "ExArchive",
			'name'          : "ExArch",
			'dictKey'       : "exArch",
			'cssClass'      : "exArId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Porn'
		},

		{
			"num"           : 109,
			'dbKey'         : "Hitomi",
			'name'          : "Hitomi",
			'dictKey'       : "hit",
			'cssClass'      : "hitId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Porn'
		},

		{
			"num"           : 110,
			'dbKey'         : "DoujinOnline",
			'name'          : "DoujinOnline",
			'dictKey'       : "dol",
			'cssClass'      : "dolId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Porn'
		},

		{
			"num"           : 111,
			'dbKey'         : "ASMHentai",
			'name'          : "ASMHentai",
			'dictKey'       : "asmh",
			'cssClass'      : "asmhId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Porn'
		},

		{
			"num"           : 112,
			'dbKey'         : "Hentai2R",
			'name'          : "Hentai2R",
			'dictKey'       : "h2r",
			'cssClass'      : "h2rId",
			'showOnHome'    : True,
			'renderSideBar' : True,
			'genRow'        : True,
			'type'          : 'Porn'
		},


	]


def tupToHSV(tup):
	r, g, b = (var*(1.0/256) for var in tup)
	return colorsys.rgb_to_hsv(r, g, b)

def hsvToHex(ftup):
	ftup = colorsys.hsv_to_rgb(*ftup)
	r, g, b = (max(0, min(int(var*256), 255)) for var in ftup)
	ret = "#{r:02x}{g:02x}{b:02x}".format(r=r, g=g, b=b)
	return ret

# I don't want to have to add all of numpy as a dependency just to get linspace,
# so we duplicate it here.
def linspace(a, b, n=100):
	if n < 2:
		return [b]
	diff = (float(b) - a)/(n - 1)
	ret = [diff * i + a  for i in range(n)]
	return ret

import colorsys

mainKeys = []
pronKeys = []
othrKeys = []
for index, item in enumerate(sidebarItemList):
	if "Manga" in item["type"]:
		mainKeys.append((item["num"], index))
	elif "Porn" in item["type"]:
		pronKeys.append((item["num"], index))
	else:
		othrKeys.append((item["num"], index))

mainKeys.sort()
pronKeys.sort()
othrKeys.sort()

s_base, v_base = 0.35, 0.95


for keyset in [mainKeys, pronKeys, othrKeys]:
	hues = linspace(0.0, 1.0, n=len(keyset)+1)
	for dummy_num, idx in keyset:
		h = hues.pop()
		baseC  = (h,s_base,v_base)
		light1 = (h,s_base-0.05,v_base+0.2)
		light2 = (h,s_base-0.15,v_base+0.2)

		sidebarItemList[idx]["baseColour"] = hsvToHex(baseC)
		sidebarItemList[idx]["evenRow"] = hsvToHex(light1)
		sidebarItemList[idx]["oddRow"] = hsvToHex(light2)

inHomepageMangaTable = [item["dictKey"] for item in sidebarItemList if item["showOnHome"] and "Manga" in item["type"] and item["dictKey"]]
activeNonPorn        = [item["dictKey"] for item in sidebarItemList if                        "Manga" in item["type"] and item["dictKey"]]
activePorn           = [item["dictKey"] for item in sidebarItemList if                        "Porn"  in item["type"]]
active               = [item["dictKey"] for item in sidebarItemList if                                                    item["dictKey"]]

%>
