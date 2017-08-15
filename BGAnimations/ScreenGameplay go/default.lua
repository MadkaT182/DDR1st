local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "go" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+1;y,SCREEN_CENTER_Y-2;diffusealpha,0;diffusealpha,1;sleep,.8;linear,.067;diffusealpha,0);
	};
};

return t