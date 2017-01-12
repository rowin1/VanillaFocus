local _, namespace = ...

local L = setmetatable({}, { __index = function(t, k)
	local v = tostring(k)
	rawset(t, k, v)
	return v
end })

namespace.L = L

local LOCALE = GetLocale()

if LOCALE == "deDE" then
	
	L["Vanilla Focus v1.0"] = ""
	L["Loaded - /vf"] = ""
	L[" - Usage:"] = "" 
	L["Sets current target as focus"] = ""
	L["Sets NAME as focus"] = ""
	L["Clears current focus"] = ""
	L["Casts SPELL on focus"] = ""
	L["Targets focus"] = ""

return end

