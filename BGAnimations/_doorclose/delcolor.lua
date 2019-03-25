local t = Def.ActorFrame {};
local delay = 1;

--Left Door
t[#t+1] = Def.ActorFrame {
	LoadActor("../doorbg")..{
		OnCommand=cmd(diffuse,color(GetDoorColor());FullScreen;cropright,0.5;x,SCREEN_LEFT;sleep,delay;linear,0.25;addx,SCREEN_WIDTH/2);
	}
};

--Right Door
t[#t+1] = Def.ActorFrame {
	LoadActor("../doorbg")..{
		OnCommand=cmd(diffuse,color(GetDoorColor());FullScreen;cropleft,0.5;x,SCREEN_RIGHT;sleep,delay;linear,0.25;addx,-SCREEN_WIDTH/2);
	}
};

--Sound
t[#t+1] = Def.ActorFrame {
	LoadActor("close")..{
		StartTransitioningCommand=cmd(sleep,delay;queuecommand,"Snd");
		SndCommand=cmd(play);
	};
};

return t;