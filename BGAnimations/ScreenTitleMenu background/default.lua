return Def.ActorFrame {
	Def.Quad{
		InitCommand=cmd(FullScreen;diffusecolor,color("#FFFFFF"));
	};
	LoadActor( "../logobg" )..{
		OnCommand=cmd(Center;diffusealpha,.125);
	};
	LoadFont("_system1")..{
	InitCommand=cmd(addx,SCREEN_WIDTH/2+8;y,SCREEN_BOTTOM-165);
	OnCommand=function(self)
		self:settext("PLEASE SELECT MODE");
		self:playcommand("Blink");
	end;
	BlinkCommand=cmd(sleep,.4;diffusealpha,0;queuecommand,"Anim1");
	Anim1Command=cmd(sleep,.266;diffusealpha,1;queuecommand,"Anim2");
	Anim2Command=cmd(sleep,.8;diffusealpha,0;queuecommand,"Anim1");
	};
	-- LoadActor( "../copy" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-34);
	-- };
	LoadActor("menuhelp")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+144);
	};
	Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,color("#000000");diffusealpha,.9;linear,.133;diffusecolor,color("#FFFFFF");diffusealpha,0;sleep,0;linear,.3;);
	};
}