local t = Def.ActorFrame {};
local st = GAMESTATE:GetCurrentStyle():GetStepsType();
if GAMESTATE:GetCharacter(PLAYER_1):GetCharacterID() ~= "default" or GAMESTATE:GetCharacter(PLAYER_2):GetCharacterID() ~= "default" then
	if st == "StepsType_Dance_Double" then
		t[#t+1] = Def.ActorFrame {
			OnCommand=cmd(y,SCREEN_CENTER_Y+136;diffusealpha,0;linear,13.514;sleep,0;playcommand,"App");
			AppCommand=cmd(diffusealpha,1;linear,26.86;sleep,0;queuecommand,"Dis");
			DisCommand=cmd(diffusealpha,0;linear,4.171;sleep,0;queuecommand,"App");
			OffCommand=cmd(stoptweening,diffusealpha,0);
			LoadActor("choreography")..{
				OnCommand=cmd(x,SCREEN_CENTER_X-240;pause);
				AppCommand=cmd(setstate,math.random(0,3));
			};
			LoadActor("choreography")..{
				OnCommand=cmd(x,SCREEN_CENTER_X+240;pause);
				AppCommand=cmd(setstate,math.random(0,3));
			};
		};
	else
		t[#t+1] = Def.ActorFrame {
			OnCommand=cmd(y,SCREEN_CENTER_Y+136;diffusealpha,0;linear,13.514;sleep,0;playcommand,"App");
			AppCommand=cmd(diffusealpha,1;linear,26.86;sleep,0;queuecommand,"Dis");
			DisCommand=cmd(diffusealpha,0;linear,4.171;sleep,0;queuecommand,"App");
			OffCommand=cmd(stoptweening,diffusealpha,0);
			LoadActor("choreography")..{
				OnCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-240;pause);
				AppCommand=cmd(setstate,math.random(0,3));
			};
			LoadActor("choreography")..{
				OnCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+240;pause);
				AppCommand=cmd(setstate,math.random(0,3));
			};
		};
	end
end;
return t;