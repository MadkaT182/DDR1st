local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("lbldngr");
	LoadActor("../_lifebar");
	LoadActor("../_stageFrame")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+60);
	};
};
if not GAMESTATE:IsDemonstration() then
	t[#t+1] = StandardDecorationFromFile("ScoreFrame","ScoreFrame")
end;

return t