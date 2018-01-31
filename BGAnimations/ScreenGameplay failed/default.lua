local t = Def.ActorFrame {};

if not GAMESTATE:IsDemonstration() then

	if PREFSMAN:GetPreference("SongsPerPlay") < GAMESTATE:GetCurrentStageIndex()+1 then
		PlayedExtra = true;
	end;

	t[#t+1] = Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,color("#000000");diffusealpha,.5);
	};

	t[#t+1] = Def.ActorFrame {
		LoadActor( "../_doorclose" )..{};
	};

	t[#t+1] = Def.ActorFrame {
		LoadActor( "failed" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+2;sleep,1.959);
		}
	};

end

return t