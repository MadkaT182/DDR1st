return Def.ActorFrame {
	LoadActor( "bg" )..{
		OnCommand=cmd(FullScreen);
	};
	LoadActor( "title" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+66);
	};
};