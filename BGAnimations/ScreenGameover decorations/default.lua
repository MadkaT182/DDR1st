local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "../doorbg" )..{
		OnCommand=cmd(FullScreen);
	};
	--Game over
	LoadActor("gameover")..{
		OnCommand=cmd(Center);
	};
};

t[#t+1] = Def.ActorFrame {
	SOUND:PlayAnnouncer("game over")
};

return t