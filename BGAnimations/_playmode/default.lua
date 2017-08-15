local t = Def.ActorFrame {};
local pmode = "NORMAL";

if not GAMESTATE:IsDemonstration() then
	t[#t+1] = Def.ActorFrame {
		LoadFont("_system3")..{
			OnCommand=function(self)
				self:y(-93);
				self:settext(pmode);
			end;
		};
	};
end;

return t;