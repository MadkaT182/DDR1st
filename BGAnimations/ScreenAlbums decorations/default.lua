local t = Def.ActorFrame {
	LoadActor("intercord")..{
		OnCommand=cmd(Center;diffusealpha,0;linear,1.234;diffusealpha,1;sleep,1.602;linear,1.234;diffusealpha,0);
	};
	LoadActor("megamix")..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,11.978;diffusealpha,1;sleep,5.105;diffusealpha,0);
	};
	LoadActor("series")..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,17.117;diffusealpha,1;);
	};
	LoadActor("album")..{
		OnCommand=cmd(sleep,9.943;diffusealpha,0);
	};
	LoadActor("confetti")..{
		OnCommand=cmd(FullScreen;blend,'BlendMode_Add';diffusealpha,0;pause;sleep,16.049;play;diffusealpha,1;sleep,1.068;diffusealpha,0);
	};
};

t[#t+1] = Def.Quad{
	InitCommand=cmd(FullScreen;diffusecolor,color("#FFFFFF");diffusealpha,0;sleep,9.409;linear,.534;diffusealpha,1;sleep,2.135;linear,1.068;diffusealpha,0;sleep,2.903;linear,1.034;diffusealpha,1;linear,1.035;diffusealpha,0;sleep,2.202;linear,1.034;diffusealpha,1);
};

return t;