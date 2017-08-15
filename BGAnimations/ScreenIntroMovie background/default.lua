return Def.ActorFrame {
	LoadActor( "Intro" )..{
		InitCommand=cmd(FullScreen);
	};
	LoadActor( "Static" )..{
		InitCommand=cmd(FullScreen;diffusealpha,0;sleep,12.7;linear,.3;diffusealpha,1);
	};
	LoadActor( "music" )..{
		OnCommand=cmd(play);
		OffCommand=cmd(stop);
	};
	Def.Quad{
		InitCommand=cmd(FullScreen;diffusecolor,color("#000000");diffusealpha,0;sleep,13.498;linear,.7;diffusealpha,1);
	};
}