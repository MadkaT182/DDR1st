local t = Def.ActorFrame {};

if not GAMESTATE:IsDemonstration() then
	t[#t+1] = Def.ActorFrame {
		LoadFont("_system1")..{
			InitCommand=cmd(x,-48;y,-19;playcommand,"Set");
			SetCommand=function(self)
			self:settext(thified_curstage_index());
			self:horizalign(left);
			end;
			CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
			CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
			CurrentTraiP1ChangedMessageCommand=cmd(playcommand,"Set");
			CurrentTraiP2ChangedMessageCommand=cmd(playcommand,"Set");
		};
	};

	t[#t+1] = Def.ActorFrame {
		LoadFont("ScreenSystemLayer credits normal")..{
		InitCommand=cmd();
			OnCommand=function(self)
			self:settext("STAGE");
			self:x(4);
			end;
		};
	};
end;

return t;