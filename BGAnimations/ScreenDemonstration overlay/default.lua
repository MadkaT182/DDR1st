local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadFont("_system3")..{
		InitCommand=cmd(y,SCREEN_CENTER_Y-5;x,SCREEN_CENTER_X);
		OnCommand=function(self)
			self:settext("GAME OVER");
			self:sleep(.3);
			self:queuecommand("Anim");
		end;
		AnimCommand=cmd(diffusealpha,0;sleep,.234;diffusealpha,1;queuecommand,"On");
	};
};

return t;