local t = Def.ActorFrame {};

local Space = '0000';
local Combo = STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_2):MaxCombo();

local FullStep = STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W1") + STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W2") + STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W3") + STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W4") + STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W5") + STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_Miss")
local Marvelous = string.sub(Space..STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W1"), -4);
local Perfect = string.sub(Space..STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W2"), -4);
local Great = string.sub(Space..STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W3"), -4);
local Good = string.sub(Space..STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W4"), -4);
local Almost = string.sub(Space..STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W5"), -4);
local Boo = string.sub(Space..STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_Miss"), -4);
local Mfix = 28;

local PMarv = Marvelous/FullStep;
local PPerf = Perfect/FullStep;
local PGrea = Great/FullStep;
local PGood = Good/FullStep;
local PAlmo = Almost/FullStep;
local PBoo = Boo/FullStep;

local MarvEnabled = PREFSMAN:GetPreference("AllowW1");--Everywhere
if MarvEnabled == "AllowW1_Everywhere" then
	--Marvelous--
	t[#t+1] = LoadFont("ScoreDisplayNormal")..{
		InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-319;addx,164;horizalign,right;);
		OnCommand=function(self)
			self:settextf(Marvelous);
		end;
	};
	t[#t+1] = LoadFont("_system1")..{
		InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-319;addx,272;horizalign,right;);
		OnCommand=function(self)
			self:settextf(string.format("%.1f", (Marvelous*100)/FullStep).."%%");
		end;
	};
else
	Mfix = 0;
end;

--Perfect--
t[#t+1] = LoadFont("ScoreDisplayNormal")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-319+Mfix;addx,164;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Perfect);
	end;
};
t[#t+1] = LoadFont("_system1")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-319+Mfix;addx,272;horizalign,right;);
	OnCommand=function(self)
		self:settextf(string.format("%.1f", (Perfect*100)/FullStep).."%%");
	end;
};
--Great--
t[#t+1] = LoadFont("ScoreDisplayNormal")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-291+Mfix;addx,164;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Great);
	end;
};
t[#t+1] = LoadFont("_system1")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-291+Mfix;addx,272;horizalign,right;);
	OnCommand=function(self)
		self:settextf(string.format("%.1f", (Great*100)/FullStep).."%%");
	end;
};
--Good--
t[#t+1] = LoadFont("ScoreDisplayNormal")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-263+Mfix;addx,164;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Good);
	end;
};
t[#t+1] = LoadFont("_system1")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-263+Mfix;addx,272;horizalign,right;);
	OnCommand=function(self)
		self:settextf(string.format("%.1f", (Good*100)/FullStep).."%%");
	end;
};
--Boo--
t[#t+1] = LoadFont("ScoreDisplayNormal")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-235+Mfix;addx,164;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Almost);
	end;
};
t[#t+1] = LoadFont("_system1")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-235+Mfix;addx,272;horizalign,right;);
	OnCommand=function(self)
		self:settextf(string.format("%.1f", (Almost*100)/FullStep).."%%");
	end;
};
--Miss--
t[#t+1] = LoadFont("ScoreDisplayNormal")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-207+Mfix;addx,164;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Boo);
	end;
};
t[#t+1] = LoadFont("_system1")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-207+Mfix;addx,272;horizalign,right;);
	OnCommand=function(self)
		self:settextf(string.format("%.1f", (Boo*100)/FullStep).."%%");
	end;
};
--Max Combo--
t[#t+1] = LoadFont("ScoreDisplayNormal")..{
	InitCommand=cmd(player,PLAYER_2;y,SCREEN_CENTER_Y-175+Mfix;addx,140;horizalign,left;);
	OnCommand=function(self)
		self:settextf(Combo);
	end;
};

return t;