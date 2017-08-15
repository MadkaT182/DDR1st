local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {

	InitCommand=cmd(Center;addy,-86;addx,-200);
	GainFocusCommand=cmd(draworder,1;diffuse,1,1,1,1);
	LoseFocusCommand=cmd(draworder,0;diffuse,0.25,0.25,0.25,1);

	LoadActor("_mode/sp1")..{
		GainFocusCommand=cmd(stoptweening;linear,.25;y,0;zoom,1);
		LoseFocusCommand=cmd(stoptweening;linear,.25;y,2;zoom,.7485);
	};
	LoadActor("_mode/sp2")..{
		OnCommand=cmd(y,-3);
		GainFocusCommand=cmd(stoptweening;linear,.25;y,-3;zoom,1);
		LoseFocusCommand=cmd(stoptweening;linear,.25;y,-4;zoom,.7485);
	};
	LoadActor("_mode/easy")..{
		OnCommand=cmd(y,-20);
		GainFocusCommand=cmd(stoptweening;linear,.25;zoom,1);
		LoseFocusCommand=cmd(stoptweening;linear,.25;zoom,.619);
	};

	LoadFont("_stages")..{
		OnCommand=function(self)
		self:settext("1");
		self:horizalign("right");
		self:y(73);
		self:x(-52);
		end;
		GainFocusCommand=cmd(stoptweening;linear,.25;x,-52;zoom,1);
		LoseFocusCommand=cmd(stoptweening;linear,.25;x,-24;zoom,.5);
	};
	LoadFont("_system2")..{
		OnCommand=function(self)
			self:settext("STAGE");
			self:horizalign("left");
			self:y(76);
			self:x(-45);
		end;
		GainFocusCommand=cmd(stoptweening;linear,.25;x,-45;zoom,1);
		LoseFocusCommand=cmd(stoptweening;linear,.25;x,-21;y,78;zoom,.5);
	};
	LoadActor("_mode/desc_easy")..{
		OnCommand=cmd(y,166;x,204);
		GainFocusCommand=cmd(diffusealpha,1);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
};

return t;