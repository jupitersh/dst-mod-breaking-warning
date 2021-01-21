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
    if act.doer and act.target and act.target.components.workable.workleft == 1 then
        if GetModConfigData("notice_method") == 1 then
            GLOBAL.TheNet:Announce(redskull..common_string_warn..act.doer:GetDisplayName()..common_string_hammer..act.target:GetDisplayName()..redskull)
        elseif GetModConfigData("notice_method") == 2 then
            GLOBAL.TheNet:SystemMessage(redskull..common_string_warn..act.doer:GetDisplayName()..common_string_hammer..act.target:GetDisplayName()..redskull)
        end
        if act.doer.userid then
            print(act.doer:GetDisplayName().."("..act.doer.userid..")"..common_string_hammer..act.target:GetDisplayName())
        end
    end
    return _ACTION_HAMMER(act)
end

local _ACTION_LIGHT = GLOBAL.ACTIONS.LIGHT.fn
GLOBAL.ACTIONS.LIGHT.fn = function(act)
    if act.doer and act.target then
        if GetModConfigData("notice_method") == 1 then
            GLOBAL.TheNet:Announce(redskull..common_string_warn..act.doer:GetDisplayName()..common_string_light..act.target:GetDisplayName()..redskull)
        elseif GetModConfigData("notice_method") == 2 then
            GLOBAL.TheNet:SystemMessage(redskull..common_string_warn..act.doer:GetDisplayName()..common_string_light..act.target:GetDisplayName()..redskull)
        end
        if act.doer.userid then
            print(act.doer:GetDisplayName().."("..act.doer.userid..")"..common_string_light..act.target:GetDisplayName())
        end
    end
    return _ACTION_LIGHT(act)
end