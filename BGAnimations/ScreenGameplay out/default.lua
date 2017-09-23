local t = Def.ActorFrame {};

if not GAMESTATE:IsDemonstration() then

	t[#t+1] = Def.Quad{
		OnCommand=cmd(Center;FullScreen;diffusecolor,color("#FFFFFF");diffusealpha,0;sleep,.3;linear,.967;diffusealpha,1);
	};

	t[#t+1] = Def.ActorFrame {
		LoadActor( "../_doorclose/delay" )..{};
	};

	t[#t+1] = Def.ActorFrame {
		LoadActor( "cleared" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+2;sleep,2);
		}
	};

	t[#t+1] = Def.ActorFrame {
		LoadFont("_system1")..{
			Text="CHALLENGE EXTRA STAGE";
			InitCommand=cmd(horizalign,center;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-133;visible,false);
			StartTransitioningCommand=function(self)
				if GAMESTATE:HasEarnedExtraStage() then
					self:visible(true);
					SCREENMAN:SystemMessage("Extra");
				else
					SCREENMAN:SystemMessage("Normal");
				end;
			end;
		};
	};

end

return t