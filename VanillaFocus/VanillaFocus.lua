function VanillaFocus_OnLoad()
	SLASH_VANILLAFOCUS1 = "/vanillafocus";
	SLASH_VANILLAFOCUS2 = "/vf";
	SLASH_FOCUS1 = "/focus";
	SLASH_CLEARFOCUS1 = "/clearfocus";
	SLASH_FOCUSCAST1 = "/focuscast";
	SLASH_TARGETFOCUS1 = "/targetfocus";
	
	SlashCmdList["VANILLAFOCUS"] = function(msg)
		VanillaFocus_SlashCommandHandler(msg);
	end
	SlashCmdList["FOCUS"] = function(name)
		VanillaFocus_SetFocus(name);
	end
	SlashCmdList["CLEARFOCUS"] = function()
		VanillaFocus_ClearFocus();
	end
	SlashCmdList["FOCUSCAST"] = function(spell)
		VanillaFocus_FocusCast(spell);
	end
	SlashCmdList["TARGETFOCUS"] = function()
		VanillaFocus_TargetFocus();
	end
	
	DEFAULT_CHAT_FRAME:AddMessage(VANILLAFOCUS_VERSION..VANILLAFOCUS_LOADED);
	
	VanillaFocus_Focus = nil;
end

function VanillaFocus_SetFocus(name)
	if (GetUnitName("target") ~= nill) then
		VanillaFocus_Focus = GetUnitName("target");
	elseif (name ~= "") then
		VanillaFocus_Focus = name;
	end
end

function VanillaFocus_ClearFocus()
	VanillaFocus_Focus = nil;
end

function VanillaFocus_TargetFocus()
	if (VanillaFocus_Focus ~= nill) then
		SlashCmdList["TARGET"](VanillaFocus_Focus);
	end
end

function VanillaFocus_FocusCast(spell)
	if (VanillaFocus_Focus ~= nill) then
		VanillaFocus_currentTarget = GetUnitName("target");
		SlashCmdList["TARGET"](VanillaFocus_Focus);
		CastSpellByName(spell);
		TargetUnit(VanillaFocus_currentTarget);
	end
end

function VanillaFocus_SlashCommandHandler(msg) 
	if (msg) then
		local command = string.lower(msg);
		VanillaFocus_Help();
	end
end

function VanillaFocus_Help()
	DEFAULT_CHAT_FRAME:AddMessage(VANILLAFOCUS_VERSION..VANILLAFOCUS_HELP1);
	DEFAULT_CHAT_FRAME:AddMessage("/focus         -- "..VANILLAFOCUS_HELP2);
	DEFAULT_CHAT_FRAME:AddMessage("/focus name         -- "..VANILLAFOCUS_HELP3);
	DEFAULT_CHAT_FRAME:AddMessage("/clearfocus         -- "..VANILLAFOCUS_HELP4);
	DEFAULT_CHAT_FRAME:AddMessage("/focuscast spell -- "..VANILLAFOCUS_HELP5);
	DEFAULT_CHAT_FRAME:AddMessage("/targetfocus         -- "..VANILLAFOCUS_HELP6);
end

