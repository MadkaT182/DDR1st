local t = Def.ActorFrame {};
t[#t+1] = Def.Quad{
	InitCommand=cmd(FullScreen;diffusecolor,color("#FFFFFF"));
};
t[#t+1] = Def.ActorFrame {
	LoadActor("../ScreenCompany decorations/konami")..{
		OnCommand=cmd(Center;sleep,2.803;diffusealpha,0);
	};
	LoadActor("kcet")..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,2.803;diffusealpha,1);
	};
};
t[#t+1] = Def.Quad{
	InitCommand=cmd(FullScreen;diffusecolor,color("#000000");linear,.4;diffusealpha,0;sleep,2.069;linear,.3;diffusealpha,1;sleep,.034;linear,.367;diffusealpha,0;sleep,2.069;linear,.333;diffusealpha,1);
};
return t