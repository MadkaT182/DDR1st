local path = "../ScreenSelectMusic background/";
return Def.ActorFrame {
	LoadActor( "bg" )..{
		OnCommand=cmd(FullScreen);
	};
	LoadActor( "title" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,39);
	};
	LoadActor( "descframe" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-159;diffusealpha,.5);
	};
	LoadActor( "../time_frame" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-272;y,SCREEN_BOTTOM-56);
	};
	LoadActor( path.."helpframe" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+50;y,SCREEN_BOTTOM-56;diffusealpha,.5);
	};
	LoadActor( path.."helptxt" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+50;y,SCREEN_BOTTOM-54);
	};
}