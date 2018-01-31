local t = Def.ActorFrame {};
local song = GAMESTATE:GetCurrentSong();
local MarvEnabled = PREFSMAN:GetPreference("AllowW1");
local Mfix = 28;

--Title
t[#t+1] = Def.ActorFrame {
	LoadActor( "str" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+8;y,SCREEN_TOP+50;);
	}
};

if MarvEnabled == "AllowW1_Everywhere" then
t[#t+1] = Def.ActorFrame {
	--Marvelous--
	LoadFont("_system3")..{
		InitCommand=cmd(y,SCREEN_BOTTOM-385;x,SCREEN_CENTER_X);
		OnCommand=function(self)
			self:settext("MARVELOUS");
		end;
	};
};
else
	Mfix = 0;
end;

--Labels
t[#t+1] = Def.ActorFrame {
	LoadFont("_system3")..{
		InitCommand=cmd(y,SCREEN_BOTTOM-385+Mfix;x,SCREEN_CENTER_X);
		OnCommand=function(self)
			self:settext("PERFECT");
		end;
	};
	LoadFont("_system3")..{
		InitCommand=cmd(y,SCREEN_BOTTOM-357+Mfix;x,SCREEN_CENTER_X);
		OnCommand=function(self)
			self:settext("GREAT");
		end;
	};
	LoadFont("_system3")..{
		InitCommand=cmd(y,SCREEN_BOTTOM-329+Mfix;x,SCREEN_CENTER_X);
		OnCommand=function(self)
			self:settext("GOOD");
		end;
	};
	LoadFont("_system3")..{
		InitCommand=cmd(y,SCREEN_BOTTOM-301+Mfix;x,SCREEN_CENTER_X);
		OnCommand=function(self)
			self:settext("BOO");
		end;
	};
	LoadFont("_system3")..{
		InitCommand=cmd(y,SCREEN_BOTTOM-273+Mfix;x,SCREEN_CENTER_X);
		OnCommand=function(self)
			self:settext("MISS");
		end;
	};
	LoadFont("_system3")..{
		InitCommand=cmd(y,SCREEN_BOTTOM-241+Mfix;x,SCREEN_CENTER_X);
		OnCommand=function(self)
			self:settext("MAX COMBO");
		end;
	};
	LoadFont("_system3")..{
		InitCommand=cmd(y,SCREEN_BOTTOM-145;x,SCREEN_CENTER_X);
		OnCommand=function(self)
			self:settext("RANK");
		end;
	};
	LoadFont("_system1")..{
		InitCommand=cmd(y,SCREEN_BOTTOM-93;x,SCREEN_CENTER_X);
		OnCommand=function(self)
			self:settext("STAGE SCORE");
		end;
	};
	LoadFont("_system1")..{
		InitCommand=cmd(y,SCREEN_BOTTOM-47;x,SCREEN_CENTER_X);
		OnCommand=function(self)
			self:settext("TOTAL SCORE");
		end;
	};
};

--Player stats
if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
	--Statsp1
	t[#t+1] = LoadActor("statsP1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-72;y,SCREEN_CENTER_Y-64)
	};
	t[#t+1] = LoadFont("ScreenSystemLayer credits normal")..{
		InitCommand=cmd(y,SCREEN_BOTTOM-70;x,SCREEN_CENTER_X-272);
		OnCommand=function(self)
			self:settext("SCORE");
		end;
	};
	t[#t+1] = LoadFont("ScoreDisplayNormal", "Text")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-204;y,SCREEN_CENTER_Y+147;playcommand,"Set");
		SetCommand = function (self)
			local score = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetScore();
			self:settext(score);
		end;
	};
	--Total score p1
	t[#t+1] = LoadFont("ScoreDisplayNormal", "Text")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-204;y,SCREEN_CENTER_Y+193;playcommand,"Set");
		SetCommand = function (self)
			local score = STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_1):GetScore();
			self:settext(score);
		end;
	};
end

if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
	--Statsp2
	t[#t+1] = LoadActor("statsP2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+48;y,SCREEN_CENTER_Y-64)
	};
	t[#t+1] = LoadFont("ScreenSystemLayer credits normal")..{
		InitCommand=cmd(y,SCREEN_BOTTOM-70;x,SCREEN_CENTER_X+136);
		OnCommand=function(self)
			self:settext("SCORE");
		end;
	};
	--Song score p2
	t[#t+1] = LoadFont("ScoreDisplayNormal", "Text")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+300;y,SCREEN_CENTER_Y+147;playcommand,"Set");
		SetCommand = function (self)
			local score = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetScore();
			self:settext(score);
		end;
	};
	--Total score p1
	t[#t+1] = LoadFont("ScoreDisplayNormal", "Text")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+300;y,SCREEN_CENTER_Y+193;playcommand,"Set");
		SetCommand = function (self)
			local score = STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_2):GetScore();
			self:settext(score);
		end;
	};
end

--Grade
t[#t+1] = LoadActor("grade")..{
	OffCommand=cmd(sleep,0.2;linear,0.2;diffusealpha,0);
};

if ThemePrefs.Get("DataEval") then
	t[#t+1] = LoadFont("_system1")..{
		InitCommand=function(self)
			self:settext(song:GetDisplayMainTitle());
			self:x(SCREEN_CENTER_X);
			self:y(SCREEN_TOP+12);
			self:diffuse(color("#FFFF00DD"));
		end;
	};
	for player in ivalues(GAMESTATE:GetHumanPlayers()) do
		t[#t+1] = LoadFont("_system1")..{
			InitCommand=function(self)
				local diff = GAMESTATE:GetCurrentSteps(player):GetDifficulty();
				self:settext("-"..CustomDifficultyToLocalizedString(diff).."-");
				self:x(player == PLAYER_1 and SCREEN_CENTER_X-231 or SCREEN_CENTER_X+231);
				self:y(SCREEN_TOP+50);
				self:diffuse(color("#FFFF00DD"));
			end;
		};
	end
end

return t