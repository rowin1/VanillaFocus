function VanillaFocus_SlashCommandHandler(msg) 
	if (msg) then
		local command = string.lower(msg);
		VanillaFocus_Help();
	end
end

function VanillaFocus_Help()
	DEFAULT_CHAT_FRAME:AddMessage(VANILLAFOCUS_VERSION..VANILLAFOCUS_HELP1);
	DEFAULT_CHAT_FRAME:AddMessage("/focus         -- "..VANILLAFOCUS_HELP2);
	DEFAULT_CHAT_FRAME:AddMessage("/focus NAME         -- "..VANILLAFOCUS_HELP3);
	DEFAULT_CHAT_FRAME:AddMessage("/clearfocus         -- "..VANILLAFOCUS_HELP4);
	DEFAULT_CHAT_FRAME:AddMessage("/focuscast SPELLID -- "..VANILLAFOCUS_HELP5);
	DEFAULT_CHAT_FRAME:AddMessage("/targetfocus         -- "..VANILLAFOCUS_HELP6);
end

