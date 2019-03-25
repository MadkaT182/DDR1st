local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("warning")..{
		OnCommand=cmd(Center;sleep,6.64;linear,.334;diffusealpha,0);
	};
	LoadActor("load1")..{
		OnCommand=cmd(diffusealpha,0;Center;sleep,7.04;diffusealpha,1;sleep,1.468;diffusealpha,0);
	};
	LoadActor("load2")..{
		OnCommand=cmd(diffusealpha,0;Center;sleep,8.508;diffusealpha,1;sleep,2.036;diffusealpha,0);
	};
	LoadActor(THEME:GetPathG("","loading"))..{
		OnCommand=cmd(diffusealpha,0;Center;addy,171;sleep,10.644;linear,1.068;diffusealpha,1;);
	};
};

return t