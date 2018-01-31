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

	for _, s in ipairs(Stage) do
		if PREFSMAN:GetPreference("SongsPerPlay") == GAMESTATE:GetCurrentStageIndex()+1 and GMode ~= "easy" then
			t[#t+1] = Def.ActorFrame {
				LoadFont("_system1")..{
					StartTransitioningCommand=function(self)
						self:x(SCREEN_CENTER_X);
						self:y(SCREEN_BOTTOM-133);
						for player in ivalues(GAMESTATE:GetHumanPlayers()) do
							local life = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetCurrentLife();
							local percent = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetPercentDancePoints();
							if ThemePrefs.Get("XtraReq") then
								if life == 1 and percent > .95 then
									self:settext("CHALLENGE EXTRA STAGE");
									GotExtra = true;
								end;
							else
								if life == 1 then
									self:settext("CHALLENGE EXTRA STAGE");
									GotExtra = true;
								end;
							end;
						end;
					end;
				};
			};
		elseif PREFSMAN:GetPreference("SongsPerPlay") < GAMESTATE:GetCurrentStageIndex()+1 then
			PlayedExtra = true;
		end;
	end

end

return t