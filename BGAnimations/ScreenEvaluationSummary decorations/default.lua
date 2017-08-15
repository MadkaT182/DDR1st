local path = "../ScreenEvaluationNormal decorations/";
local t = Def.ActorFrame {};

--Title
t[#t+1] = Def.ActorFrame {
	LoadActor( "tot" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-2;y,SCREEN_TOP+50;);
	}
};

-- --Player stats
-- if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
-- 	--Statsp1
-- 	t[#t+1] = LoadActor("statsP1")..{
-- 		OnCommand=cmd(x,SCREEN_CENTER_X-72;y,SCREEN_CENTER_Y-64)
-- 	};
-- 	--Song score p1
-- 	--Total score p1
-- 	t[#t+1] = Def.RollingNumbers {
-- 		File = THEME:GetPathF("ScoreDisplayNormal", "Text");
-- 		InitCommand=cmd(x,SCREEN_CENTER_X-200;y,SCREEN_CENTER_Y+191;playcommand,"Set");
-- 		SetCommand = function (self)
-- 			local score = STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_1):GetScore();
-- 			self:Load("RollingNumbersEvaluation");
-- 			self:targetnumber(score);
-- 		end;
-- 	};
-- end

-- if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
-- 	--Statsp2
-- 	t[#t+1] = LoadActor("statsP2")..{
-- 		OnCommand=cmd(x,SCREEN_CENTER_X+48;y,SCREEN_CENTER_Y-64)
-- 	};
-- 	--Song score p2
-- 	--Total score p1
-- 	t[#t+1] = Def.RollingNumbers {
-- 		File = THEME:GetPathF("ScoreDisplayNormal", "Text");
-- 		InitCommand=cmd(x,SCREEN_CENTER_X+200;y,SCREEN_CENTER_Y+191;playcommand,"Set");
-- 		SetCommand = function (self)
-- 			local score = STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_2):GetScore();
-- 			self:Load("RollingNumbersEvaluation");
-- 			self:targetnumber(score);
-- 		end;
-- 	};
-- end

-- --Grade
-- t[#t+1] = LoadActor("grade")..{
-- 	OffCommand=cmd(sleep,0.2;linear,0.2;diffusealpha,0);
-- };

return t