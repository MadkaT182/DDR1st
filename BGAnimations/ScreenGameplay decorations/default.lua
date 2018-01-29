local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("lbldngr");
	LoadActor("../_lifebar");
	LoadActor("chind");
	LoadActor("../_stageFrame")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+60);
	};
};
if not GAMESTATE:IsDemonstration() then
	t[#t+1] = StandardDecorationFromFile("ScoreFrame","ScoreFrame");
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathG("","Mod_Indicator"))..{
			InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-49)
		};
	};
end;

return t