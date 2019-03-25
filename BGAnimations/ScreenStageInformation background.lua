return Def.ActorFrame {
	LoadActor("doorbg")..{
		OnCommand=cmd(diffuse,color(GetDoorColor());FullScreen);
	};
	LoadActor(THEME:GetPathG("","loading"))..{
		InitCommand=cmd(Center;addy,171;diffuseshift;effectcolor1,1,1,1,1;effectcolor2,0,0,0,1);
	};
};