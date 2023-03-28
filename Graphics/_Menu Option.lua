return Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+8;);
	LoadActor("_title/opf")..{
		GainFocusCommand=cmd(diffusealpha,1);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	LoadActor("_title/opl")..{
		GainFocusCommand=cmd(diffusealpha,0);
		LoseFocusCommand=cmd(diffusealpha,1);
	};
	GainFocusCommand=cmd(stoptweening;zoom,.9;linear,.1;zoom,1);
	LoseFocusCommand=cmd(stoptweening;zoom,1);
};