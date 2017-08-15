local t = Def.ActorFrame {};

if GAMESTATE:GetCoinMode() == 'CoinMode_Home' then
	t[#t+1] = Def.ActorFrame {
		LoadActor("helpcs")..{};
	};
else
	t[#t+1] = Def.ActorFrame {
		LoadActor("helpac")..{};
	};
end

return t;