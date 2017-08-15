return Def.ActorFrame {
	Def.Quad{
		InitCommand=cmd(FullScreen;diffusecolor,color("#000000");diffusealpha,.8;linear,.6;diffusealpha,0);
	};
	LoadActor("_arcade_decorations")..{};
}