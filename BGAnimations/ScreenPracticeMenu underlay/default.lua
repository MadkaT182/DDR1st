return Def.ActorFrame{
	LoadActor("bgrow")..{
		InitCommand=cmd(Center);
	};
	LoadActor("title")..{
		InitCommand=cmd(CenterX;y,25);
	};
	LoadActor("song_frame")..{
		InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y-59);
	};
};