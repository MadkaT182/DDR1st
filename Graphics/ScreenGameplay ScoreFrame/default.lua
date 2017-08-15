local t = Def.ActorFrame{};

--P1 ScoreFrame
if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = LoadFont("ScreenSystemLayer credits normal")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-312;playcommand,"Refresh");
		RefreshCommand=function(self)
			self:settext("SCORE");
			self:horizalign(left);
		end;
	}
end

--P2 ScoreFrame
if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = LoadFont("ScreenSystemLayer credits normal")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+96;playcommand,"Refresh");
		RefreshCommand=function(self)
			self:settext("SCORE");
			self:horizalign(left);
		end;
	}
end

return t