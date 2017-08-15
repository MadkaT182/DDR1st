return Def.ActorFrame {
	LoadActor( "bg" )..{
		OnCommand=cmd(FullScreen);
	};
	LoadActor( "title" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+39);
	};
	LoadActor( "../time_frame" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-272;y,SCREEN_BOTTOM-56);
	};
	LoadActor( "helpframe" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+50;y,SCREEN_BOTTOM-56;diffusealpha,.5);
	};
	LoadActor( "helptxt" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+50;y,SCREEN_BOTTOM-54);
	};
};