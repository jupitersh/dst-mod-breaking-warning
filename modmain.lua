if GetModConfigData("lang") == "zh" then
    common_string_warn = "警告:"
    common_string_hammer = "正在砸"
    common_string_light = "正在烧"
else
    common_string_warn = "Warning: "
    common_string_hammer = " is Hammering "
    common_string_light = "is lighting "
end

local redskull = "󰀀"

local _ACTION_HAMMER = GLOBAL.ACTIONS.HAMMER.fn
GLOBAL.ACTIONS.HAMMER.fn = function(act)
    if act.doer and act.target then
        if GetModConfigData("announce_ornot") then
            GLOBAL.TheNet:Announce(redskull..common_string_warn..act.doer.name..common_string_hammer..act.target.name..redskull)
        end
        if act.doer.userid then
            print(act.doer.name.."("..act.doer.userid..")"..common_string_hammer..act.target.name)
        end
    end
    return _ACTION_HAMMER(act)
end

local _ACTION_LIGHT = GLOBAL.ACTIONS.LIGHT.fn
GLOBAL.ACTIONS.LIGHT.fn = function(act)
    if act.doer and act.target then
        if GetModConfigData("announce_ornot") then
            GLOBAL.TheNet:Announce(redskull..common_string_warn..act.doer.name..common_string_light..act.target.name..redskull)
        end
        if act.doer.userid then
            print(act.doer.name.."("..act.doer.userid..")"..common_string_light..act.target.name)
        end
    end
    return _ACTION_LIGHT(act)
end