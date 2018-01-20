local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "ready" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,1;sleep,8.334;diffusealpha,0;);
	};
};

return t;