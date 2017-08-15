local t = Def.ActorFrame {};

if GAMESTATE:GetCoinMode() == 'CoinMode_Home' then
	t[#t+1] = Def.ActorFrame {
		LoadActor("logocs")..{};
	};
else
	t[#t+1] = Def.ActorFrame {
		LoadActor("logoac")..{};
	};
end

return t;