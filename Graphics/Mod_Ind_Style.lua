local t = Def.ActorFrame {};
local numMods = 0;

if ManiacOn then
	numMods = numMods+1;
elseif AnotherOn then
	numMods = numMods+1;
end;
if DoubleOn	then
	numMods = numMods+1;
end;
if MirrorOn then
	numMods = numMods+1;
end;

t[#t+1] = Def.ActorFrame {
	--Double
	LoadFont("_system1")..{
		InitCommand=cmd(playcommand,"Update");
		CodeMessageCommand=cmd(playcommand,"Update");
		UpdateCommand=function(self)
			if numMods>1 then
				self:y(14);
			else
				self:y(0);
			end;
			if DoubleOn then
				self:settext("DOUBLE");
			else
				self:settext("");
			end;
		end;
	};
	--Diff
	LoadFont("_system1")..{
		InitCommand=cmd(playcommand,"Update");
		CodeMessageCommand=cmd(playcommand,"Update");
		UpdateCommand=function(self)
			if ManiacOn then
				self:settext("MANIAC");
			elseif AnotherOn then
				self:settext("ANOTHER");
			else
				self:settext("");
			end;
		end;
	};
	--Mirror
	LoadFont("_system1")..{
		InitCommand=cmd(playcommand,"Update");
		CodeMessageCommand=cmd(playcommand,"Update");
		UpdateCommand=function(self)
			if numMods>1 then
				self:y(-16);
			else
				self:y(0);
			end;
			if MirrorOn then
				self:settext("MIRROR");
			else
				self:settext("");
			end;
		end;
	};
};

return t;