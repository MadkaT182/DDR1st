local t = Def.ActorFrame {};

for player in ivalues(GAMESTATE:GetHumanPlayers()) do
	local cstats = STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(player):GetGrade();
	local staw = STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(player):GetStageAward();
	t[#t+1] = Def.ActorFrame {
		InitCommand=cmd(y,SCREEN_CENTER_Y+78);
		OnCommand=function(self)
			self:x(player == PLAYER_1 and SCREEN_CENTER_X-202 or SCREEN_CENTER_X+202);
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
		--Grade
		Def.Sprite{
			Texture=THEME:GetPathG("", "Grades/Dummy");
			OnCommand=function(self)
				if cstats then
					self:Load(THEME:GetPathG("", "Grades/"..cstats));
				else
					self:Load(THEME:GetPathG("", "Grades/Dummy"));
				end
			end;
		};
	};
end

return t;
