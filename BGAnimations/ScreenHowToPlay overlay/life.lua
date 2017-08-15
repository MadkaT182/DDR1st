local path = "../_lifebar/";
local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame{
	LoadActor(path.."LifeMeterBar under")..{
		OnCommand=cmd(diffusealpha,0;sleep,8.876;diffusealpha,1;x,SCREEN_CENTER_X+172;addy,47;zoomx,-1);
	};
};

for i=1,41 do
	t[#t+1] = Def.ActorFrame{
		LoadActor(path.."LifeMeterBar over")..{
			BeginCommand=cmd(diffusealpha,0;sleep,8.876;diffusealpha,.35;addy,47;zoomx,-1;blend,'BlendMode_Subtract');
			InitCommand=function (self) self:x(SCREEN_CENTER_X+304-6*i) end;
			OnCommand=function(self)
				self:pause()
				self:setstate(-1 + i)
			end;
		};
	};
end

t[#t+1] = Def.ActorFrame{
	LoadActor("f5")..{
		OnCommand=cmd(diffusealpha,0;sleep,13.08;diffusealpha,1;x,SCREEN_CENTER_X+280;addy,53;zoomx,-1;queuecommand,"Blink");
		BlinkCommand=cmd(diffusealpha,1;sleep,0.067;diffusealpha,0;sleep,0.033;diffusealpha,1;sleep,0.067;diffusealpha,0;sleep,0.033;diffusealpha,1;sleep,0.067;diffusealpha,0;sleep,0.033;diffusealpha,1;sleep,0.067;diffusealpha,0;sleep,0.033;diffusealpha,1;sleep,0.067;diffusealpha,0;sleep,0.033;diffusealpha,1;sleep,0.067;diffusealpha,0;sleep,0.033;diffusealpha,1;sleep,0.067;diffusealpha,0;sleep,0.033;diffusealpha,1;);
	};
	LoadActor("f6")..{
		OnCommand=cmd(diffusealpha,0;sleep,19.553;diffusealpha,1;x,SCREEN_CENTER_X+280;addy,53;zoomx,-1;sleep,8.675;diffusealpha,0);
	};
	LoadActor("f7")..{
		OnCommand=cmd(diffusealpha,0;sleep,23.891;diffusealpha,1;x,SCREEN_CENTER_X+280;addy,53;zoomx,-1;sleep,4.337;diffusealpha,0);
	};
};

return t;