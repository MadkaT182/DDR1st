return Def.ActorFrame {
	LoadActor("_playmode")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM);
	};
};