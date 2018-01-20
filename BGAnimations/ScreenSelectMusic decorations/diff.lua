local t = Def.ActorFrame {};
local difficulty;

t[#t+1] = Def.ActorFrame {
	LoadFont("_diff_meter")..{
		InitCommand=function(self)
			self:y(-29);
			self:playcommand("Update");
			if MirrorOn then
				self:zoomy(-1);
			end
		end;
		UpdateCommand=function(self)
			for player in ivalues(GAMESTATE:GetHumanPlayers()) do
				local song = GAMESTATE:GetCurrentSong();
				local steps = GAMESTATE:GetCurrentSteps(player);
				if song and steps ~= nil then
					local diff = GAMESTATE:GetCurrentSteps(player):GetDifficulty();
					local meter = steps:GetMeter();
					local fixmeter = 0;
					if meter > 7 then
						fixmeter = 7;
						self:textglowmode('TextGlowMode_Inner');
						self:diffuseshift();
						self:effectcolor1(color(GetDifficultyColor(diff)));
						self:effectcolor2(.7,.7,.7,1);
					else
						fixmeter = meter;
						self:stopeffect();
					end
					self:settext(string.rep("0",fixmeter));
					self:diffuse(color(GetDifficultyColor(diff)));
				else
					self:settext("");
				end
			end;
		end;
	};
	LoadFont( "_system1" )..{
		InitCommand=cmd(playcommand,"Update");
		UpdateCommand=function(self)
			difficulty = 999;
			for player in ivalues(GAMESTATE:GetHumanPlayers()) do
				local song = GAMESTATE:GetCurrentSong();
				local steps = GAMESTATE:GetCurrentSteps(player);
				if song then
					if song and steps ~= nil then
						difficulty = steps:GetMeter();
					end
				end
			end;
			self:settext(GetDifficultyName(difficulty));
			if difficulty > 7 then
				self:diffuseshift();
				self:effectcolor1(.7,.7,.7,1);
				self:effectcolor2(1,1,1,1);
			else
				self:stopeffect();
			end
		end;
	};
	CurrentSongChangedMessageCommand=cmd(playcommand,"Update");
	CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Update");
	CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Update");
};

return t