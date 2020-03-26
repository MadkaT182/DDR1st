local t = Def.ActorFrame {
	OnCommand=cmd(addx,-48;addy,-48);
};

for j = 1,5 do
	for i = 1,9 do
		t[#t+1] = Def.ActorFrame{
			LoadActor("star")..{
				InitCommand=cmd(addx,i*96;addy,j*96;spin;effectmagnitude,0,0,-70;diffusealpha,.5);
			};
		};
	end;
end;

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(addx,48;addy,48);
	Def.Quad{
		InitCommand=cmd(FullScreen;rainbow;effectperiod,20;blend,"BlendMode_Modulate");
	};
	LoadActor("separator")..{
		InitCommand=cmd(Center);
	};
	LoadActor("hint")..{
		InitCommand=cmd(x,SCREEN_RIGHT-152;y,SCREEN_BOTTOM-48);
	};
	LoadActor("title")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,48);
	};
};

return t;