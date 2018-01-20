local t = Def.ActorFrame {};

--Left Door
t[#t+1] = Def.ActorFrame {
	LoadActor("../doorbg")..{
		OnCommand=cmd(FullScreen;cropright,.5;x,SCREEN_CENTER_X;linear,.734;addx,-SCREEN_WIDTH/2);
	}
};
--Right Door
t[#t+1] = Def.ActorFrame {
	LoadActor("../doorbg")..{
		OnCommand=cmd(FullScreen;cropleft,.5;x,SCREEN_CENTER_X;linear,.734;addx,SCREEN_WIDTH/2);
	}
};
return t;