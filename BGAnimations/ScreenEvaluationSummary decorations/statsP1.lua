local t = Def.ActorFrame {};

local Space = '0000';
local Combo = STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_1):MaxCombo();

local FullStep = STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W1") + STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W2") + STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W3") + STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W4") + STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W5") + STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_Miss")
local Marvelous = string.sub(Space..STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W1"), -4);
local Perfect = string.sub(Space..STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W2"), -4);
local Great = string.sub(Space..STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W3"), -4);
local Good = string.sub(Space..STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W4"), -4);
local Almost = string.sub(Space..STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W5"), -4);
local Boo = string.sub(Space..STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_Miss"), -4);
local Mfix = 34;

local PMarv = Marvelous/FullStep;
local PPerf = Perfect/FullStep;
local PGrea = Great/FullStep;
local PGood = Good/FullStep;
local PAlmo = Almost/FullStep;
local PBoo = Boo/FullStep;

local MarvEnabled = PREFSMAN:GetPreference("AllowW1");--Everywhere
if MarvEnabled == "AllowW1_Everywhere" then
	--Marvelous--
	t[#t+1] = LoadFont("_resultNum")..{
		InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-299;addx,-14;horizalign,right;);
		OnCommand=function(self)
			self:settextf(Marvelous);
		end;
	};
	t[#t+1] = LoadFont("_system2")..{
		InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-299;addx,-112;horizalign,right;);
		OnCommand=function(self)
			self:settextf(string.format("%.1f", (Marvelous*100)/FullStep).."%%");
		end;
	};
else
	Mfix = 0;
end;

--Perfect--
t[#t+1] = LoadFont("_resultNum")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-303+Mfix;addx,-14;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Perfect);
	end;
};
t[#t+1] = LoadFont("_system2")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-303+Mfix;addx,-112;horizalign,right;);
	OnCommand=function(self)
		self:settextf(string.format("%.1f", (Perfect*100)/FullStep).."%%");
	end;
};
--Great--
t[#t+1] = LoadFont("_resultNum")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-273+Mfix;addx,-14;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Great);
	end;
};
t[#t+1] = LoadFont("_system2")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-273+Mfix;addx,-112;horizalign,right;);
	OnCommand=function(self)
		self:settextf(string.format("%.1f", (Great*100)/FullStep).."%%");
	end;
};
--Good--
t[#t+1] = LoadFont("_resultNum")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-243+Mfix;addx,-14;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Good);
	end;
};
t[#t+1] = LoadFont("_system2")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-243+Mfix;addx,-112;horizalign,right;);
	OnCommand=function(self)
		self:settextf(string.format("%.1f", (Good*100)/FullStep).."%%");
	end;
};
--Boo--
t[#t+1] = LoadFont("_resultNum")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-213+Mfix;addx,-14;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Almost);
	end;
};
t[#t+1] = LoadFont("_system2")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-213+Mfix;addx,-112;horizalign,right;);
	OnCommand=function(self)
		self:settextf(string.format("%.1f", (Almost*100)/FullStep).."%%");
	end;
};
--Miss--
t[#t+1] = LoadFont("_resultNum")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-183+Mfix;addx,-14;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Boo);
	end;
};
t[#t+1] = LoadFont("_system2")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-183+Mfix;addx,-112;horizalign,right;);
	OnCommand=function(self)
		self:settextf(string.format("%.1f", (Boo*100)/FullStep).."%%");
	end;
};
--Max Combo--
t[#t+1] = LoadFont("_maintit")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-144+Mfix;addx,-110;horizalign,left;);
	OnCommand=function(self)
		self:settextf(Combo);
	end;
};
--Bar indicators
--Miss
t[#t+1] = Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(x,SCREEN_LEFT-224;addy,14;diffusecolor,color("#F04000");zoomto,16,200;cropbottom,1;draworder,1;linear,1;cropbottom,1-(PBoo+PAlmo+PGood+PGrea+PPerf+PMarv));
	};
};
--Boo
t[#t+1] = Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(x,SCREEN_LEFT-224;addy,14;diffusecolor,color("#F800B0");zoomto,16,200;cropbottom,1;draworder,1;linear,1;cropbottom,1-(PAlmo+PGood+PGrea+PPerf+PMarv));
	};
};
--Good
t[#t+1] = Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(x,SCREEN_LEFT-224;addy,14;diffusecolor,color("#10E0F0");zoomto,16,200;cropbottom,1;draworder,1;linear,1;cropbottom,1-(PGood+PGrea+PPerf+PMarv));
	};
};
--Great
t[#t+1] = Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(x,SCREEN_LEFT-224;addy,14;diffusecolor,color("#00F860");zoomto,16,200;cropbottom,1;draworder,1;linear,1;cropbottom,1-(PGrea+PPerf+PMarv));
	};
};
--Perfect
t[#t+1] = Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(x,SCREEN_LEFT-224;addy,14;diffusecolor,color("#F8F840");zoomto,16,200;cropbottom,1;draworder,1;linear,1;cropbottom,1-(PPerf+PMarv));
	};
};
--Marvelous
t[#t+1] = Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(x,SCREEN_LEFT-224;addy,14;diffusecolor,Color.White;zoomto,16,200;cropbottom,1;draworder,1;linear,1;cropbottom,1-(PMarv));
	};
};

return t;
