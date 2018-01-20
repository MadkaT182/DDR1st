function GetDDRCode(code)

local DDRCodes = {
	["PrevSteps1"] = "Up,Up",
	["PrevSteps2"] = "MenuUp,MenuUp",
	["NextSteps1"] = "Down,Down",
	["NextSteps2"] = "MenuDown,MenuDown",
	["NextSort1"] = "@MenuLeft-@MenuRight-Start",
	["NextSort2"] = "MenuLeft-MenuRight",
	["NextSort3"] = "@Left-@Right-Start",
	["NextSort4"] = "Left-Right",
	["ModeMenu1"] = "Up,Down,Up,Down",
	["ModeMenu2"] = "MenuUp,MenuDown,MenuUp,MenuDown",
	["CancelAll"] = "Left,Right,Left,Right,Left,Right,Left,Right",
	["NextGroup"] = "MenuUp,MenuRight,MenuRight",
	["PrevGroup"] = "MenuUp,MenuDown,MenuUp,MenuDown",
	["CloseCurrentFolder"] = "MenuUp-MenuDown",
	["SaveScreenshot1"] = "MenuLeft-MenuRight",
	["SaveScreenshot2"] = "Select",
	["CancelAllPlayerOptions"] = "Left,Right,Left,Right,Left,Right",
}

local CodeCmd = DDRCodes[code] or "";

if not ThemePrefs.Get("EnableCodes") then
	CodeCmd = "";
end

return CodeCmd;
end

function SetCodeAnother()
	for pn in ivalues(GAMESTATE:GetHumanPlayers()) do
		GAMESTATE:SetPreferredDifficulty(pn,'Difficulty_Medium');
	end
	AnotherOn=true;
	ManiacOn=false;
	DoubleOn=false;
	MirrorOn=false;
end

function SetCodeManiac()
	for pn in ivalues(GAMESTATE:GetHumanPlayers()) do
		GAMESTATE:SetPreferredDifficulty(pn,'Difficulty_Hard');
	end
	ManiacOn=true;
	AnotherOn=false;
	DoubleOn=false;
	MirrorOn=false;
end

function SetCodeDouble()
	if PREFSMAN:GetPreference("Premium") ~= 'Premium_Off' then
		GAMESTATE:SetCurrentStyle('Double');
	end
	DoubleOn=true;
	AnotherOn=false;
	ManiacOn=false;
	MirrorOn=false;
end

function SetCodeMirror()
	for pn in ivalues(GAMESTATE:GetHumanPlayers()) do
		GAMESTATE:GetPlayerState(pn):GetPlayerOptions('ModsLevel_Preferred'):Mirror(true);
	end
	AnotherOn=false;
	ManiacOn=false;
	DoubleOn=false;
	MirrorOn=true;
end

function InitVars()
	--Reset and track globals
	GMode="normal";
	AnotherOn=false;
	ManiacOn=false;
	DoubleOn=false;
	MirrorOn=false;
end