return Def.ActorFrame {
	Def.Quad{
		InitCommand=cmd(FullScreen;diffusecolor,color("#FFFFFF"));
	};
	LoadActor( "../logobg" )..{
		OnCommand=cmd(Center);
	};
	LoadActor( "../copy" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-34);
	};
}