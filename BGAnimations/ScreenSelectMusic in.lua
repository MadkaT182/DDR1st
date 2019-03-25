return Def.ActorFrame {
	LoadActor("_dooropen/selmus");
	LoadFont("_stg")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-9;settext,get_stage_index();diffuse,color("#000000");diffusealpha,0;sleep,.033;linear,.134;diffuse,color("#FFFFFF");sleep,1;diffusealpha,0);
	};
};