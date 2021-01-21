name = "Breaking Warning"
description = "Announce when someone is hammering or light anything."
author = "辣椒小皇纸"
version = "1.3.1"
forumthread = ""

api_version = 10

all_clients_require_mod = false
client_only_mod = false
dst_compatible = true

icon_atlas = "modicon.xml"
icon = "modicon.tex"

----------------------
-- General settings --
----------------------

configuration_options =
{
	{
		name = "lang",
		label = "Language",
		hover = "",
		options =	{
						{description = "中文", data = "zh", hover = ""},
						{description = "English", data = "en", hover = ""},
					},
		default = "zh",
	},
	{
		name = "notice_method",
		label = "Notice Method",
		hover = "",
		options =	{
						{description = "Announce横幅公告", data = 1, hover = ""},
                        {description = "System Message聊天栏", data = 2, hover = ""},
                        {description = "None无", data = 0, hover = ""},
					},
		default = 2,
	},
}