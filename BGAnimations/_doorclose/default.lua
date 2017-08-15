local t = Def.ActorFrame {};

--Left Door
t[#t+1] = Def.ActorFrame {
	LoadActor("../doorbg")..{
		OnCommand=cmd(FullScreen;cropright,.5;x,SCREEN_LEFT;linear,.157;addx,SCREEN_WIDTH/2);
	}
};
--Right Door
t[#t+1] = Def.ActorFrame {
	LoadActor("../doorbg")..{
		OnCommand=cmd(FullScreen;cropleft,.5;x,SCREEN_RIGHT;linear,.157;addx,-SCREEN_WIDTH/2);
	}
};
--Sound
t[#t+1] = Def.ActorFrame {
	LoadActor("close")..{
		StartTransitioningCommand=cmd(sleep,.157;queuecommand,"play");
		PlayCommand=cmd(play);
	};
};

return t;