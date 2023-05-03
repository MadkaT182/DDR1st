return Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,color("#000000");diffusealpha,1;sleep,.2;linear,.234;diffusealpha,.5;sleep,ThemePrefs.Get("ReadyTime") and 8.942 or 2.471;linear,.2;diffusealpha,0);
	};
};