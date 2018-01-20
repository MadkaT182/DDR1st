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

t[#t+1] = Def.ActorFrame {
	CodeMessageCommand = function(self, params)
		if params.Name == 'Another' or params.Name == 'Maniac' or params.Name == 'Double' or params.Name == 'Mirror' then
			self:playcommand("Mod");
			if params.Name == 'Another' then
				SetCodeAnother();
			elseif params.Name == 'Maniac' then
				SetCodeManiac();
			elseif params.Name == 'Mirror' then
				SetCodeMirror();
			else
				SetCodeDouble();
			end
		end
	end;
	LoadActor("ScreenCompany decorations/logo")..{
		OnCommand=cmd(stop);
		ModCommand=cmd(play);
	};
};

return t;