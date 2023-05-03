return Def.ActorFrame {
	LoadActor("ready")..{
		OnCommand=cmd(Center;diffusealpha,1;sleep,ThemePrefs.Get("ReadyTime") and 8.334 or 1.863;diffusealpha,0;);
	};
};