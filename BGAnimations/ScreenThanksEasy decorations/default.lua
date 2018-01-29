return Def.ActorFrame {
	LoadActor( "thanks" )..{
		OnCommand=cmd(Center);
	};
	LoadFont("_system3")..{
		Text="THANK YOU FOR PLAYING";
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+135);
	};
	LoadFont("_system1")..{
		Text="YOU CLEARED EASY STEP";
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+191);
	};
}