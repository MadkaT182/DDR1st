local t = Def.ActorFrame{};
GAMESTATE:SetCurrentStyle("single");

--Sound
t[#t+1] = Def.ActorFrame {
	LoadActor("left")..{
		OnCommand=cmd(stop);
		MenuLeftP1MessageCommand=cmd(stop;sleep,0;play);
		MenuLeftP2MessageCommand=cmd(stop;sleep,0;play);
	};
};
t[#t+1] = Def.ActorFrame {
	LoadActor("right")..{
		OnCommand=cmd(stop);
		MenuRightP1MessageCommand=cmd(stop;sleep,0;play);
		MenuRightP2MessageCommand=cmd(stop;sleep,0;play);
	};
};

return t;