local t = Def.ActorFrame {};

-- LUA Based LifeMeter bar (by MadkaT)
for pn in ivalues(GAMESTATE:GetEnabledPlayers()) do
	t[#t+1] = Def.ActorFrame{
		LoadActor("LifeMeterBar under")..{
			Name="LifeMeter Frame";
			InitCommand=cmd(y,SCREEN_TOP+28;valign,0);
			OnCommand=function(self) if pn == PLAYER_1 then self:x(SCREEN_CENTER_X-175):zoomx(1) else self:x(SCREEN_CENTER_X+172):zoomx(-1) end end;
		};
	};
end;

for pn in ivalues(GAMESTATE:GetEnabledPlayers()) do
	for i = 1,41 do
		t[#t+1] = Def.Sprite{
			BeginCommand=cmd(y,SCREEN_TOP+48;diffusealpha,0.35;blend,'BlendMode_Subtract');
			InitCommand=function(self) if pn == PLAYER_1 then self:x(SCREEN_CENTER_X-305+6*i) else self:x(SCREEN_CENTER_X+304-6*i) end end;
			OnCommand=function(self)
				self:Load(THEME:GetCurrentThemeDirectory().."BGAnimations/_lifebar/LifeMeterBar over 42x1.png")
				self:pause()
				self:setstate(-1 + i)
			end;
		};
		t[#t+1] = Def.Sprite{
			BeginCommand=cmd(y,SCREEN_TOP+48;);
			InitCommand=function(self) if pn == PLAYER_1 then self:x(SCREEN_CENTER_X-305+6*i) else self:x(SCREEN_CENTER_X+304-6*i) end end;
			AnimCommand=function(self)
				self:sleep(0.6)
				self:accelerate(0.075)
				self:addy(-8)
				self:accelerate(0.075)
				self:addy(8)
				self:queuecommand("Anim")
			end;
			LifeChangedMessageCommand=function(self,params)
				self:Load(THEME:GetCurrentThemeDirectory().."BGAnimations/_lifebar/LifeMeterBar over 42x1.png")
				self:pause()

				if (params.Player == pn) then
					local life = string.format("%.1f",params.LifeMeter:GetLife() * 10)
					local pills = (string.format("%.1f",life * 17.25 / 42)) * 10
					self:setstate(-1 + i)
					if pills >= i then self:visible(true) else self:visible(false) end
				end;
			end;
		};
	end
end

return t;