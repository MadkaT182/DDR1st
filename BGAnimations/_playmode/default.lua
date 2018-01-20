local t = Def.ActorFrame {};

if not GAMESTATE:IsDemonstration() then
	t[#t+1] = Def.ActorFrame {
		LoadFont("_system3")..{
			OnCommand=function(self)
				self:y(-93);
				self:settext(string.upper(GMode));
			end;
		};
	};
end;

return t;