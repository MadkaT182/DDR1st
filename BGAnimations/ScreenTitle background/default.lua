return Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,color("#FFFFFF"));
	};
	LoadActor( "../logobg" )..{
		OnCommand=cmd(Center);
	};
	LoadActor( "../copy" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-34);
	};
}