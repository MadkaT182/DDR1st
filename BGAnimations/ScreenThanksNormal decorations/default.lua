return Def.ActorFrame {
	LoadActor("presented")..{
		OnCommand=cmd(Center;diffusealpha,0;linear,.4;diffusealpha,1;sleep,3.434;linear,.4;diffusealpha,0);
	};
	LoadActor("special")..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,4.308;linear,.797;diffusealpha,1;sleep,3.203;linear,.234;diffusealpha,0);
	};
	LoadActor("thanks")..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,8.575;linear,.768;diffusealpha,1;sleep,4.037;linear,.968;diffusealpha,0);
	};
}