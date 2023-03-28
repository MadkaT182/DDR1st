return Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-142;);
	LoadActor("_title/amf")..{
		GainFocusCommand=cmd(diffusealpha,1);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	LoadActor("_title/aml")..{
		GainFocusCommand=cmd(diffusealpha,0);
		LoseFocusCommand=cmd(diffusealpha,1);
	};
	GainFocusCommand=cmd(stoptweening;zoom,.9;linear,.1;zoom,1);
	LoseFocusCommand=cmd(stoptweening;zoom,1);
};