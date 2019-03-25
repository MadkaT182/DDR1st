return Def.ActorFrame {
	LoadActor( "../doorbg" )..{
		OnCommand=cmd(diffuse,color(GetDoorColor());FullScreen);
	};
}