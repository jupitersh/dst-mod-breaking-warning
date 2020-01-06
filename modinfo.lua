name = "Breaking Warning"
description = "Announce when someone is hammering or light anything."
author = "辣椒小皇纸"
version = "1.2.1"
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
		name = "announce_ornot",
		label = "Announce",
		hover = "",
		options =	{
						{description = "Yes", data = true, hover = ""},
						{description = "No", data = false, hover = ""},
					},
		default = true,
	},
}