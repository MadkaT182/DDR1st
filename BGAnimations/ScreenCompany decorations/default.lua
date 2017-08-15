local t = Def.ActorFrame {};

t[#t+1] = Def.Quad{
	InitCommand=cmd(FullScreen;diffusecolor,color("#FFFFFF"));
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "logo" )..{
		OnCommand=cmd(play);
		OffCommand=cmd(stop);
	};
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "konami" )..{
		OnCommand=cmd(Center);
	}
};

t[#t+1] = Def.Quad{
	InitCommand=cmd(Center;FullScreen;diffusecolor,color("#FFFFFF");linear,0.6;diffusealpha,0;);
};

return t