return Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-52;);
	LoadActor("_title/edf")..{
		GainFocusCommand=cmd(diffusealpha,1);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	LoadActor("_title/edl")..{
		GainFocusCommand=cmd(diffusealpha,0);
		LoseFocusCommand=cmd(diffusealpha,1);
	};
	GainFocusCommand=cmd(stoptweening;zoom,.9;linear,.1;zoom,1);
	LoseFocusCommand=cmd(stoptweening;zoom,1);
};