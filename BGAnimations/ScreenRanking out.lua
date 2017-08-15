return Def.ActorFrame {
	--Black overlay
	Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,Color.Black;diffusealpha,0;linear,.25;diffusealpha,1);
	};
};