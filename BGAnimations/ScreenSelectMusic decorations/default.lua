local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "arr1" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-134;y,SCREEN_CENTER_Y+45);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "arr1" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+135;y,SCREEN_CENTER_Y+45;zoomx,-1);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "arr2" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X-134;y,SCREEN_CENTER_Y+45;diffusealpha,0);
		PreviousSongMessageCommand=cmd(stoptweening;x,SCREEN_CENTER_X-134;smooth,0.025;diffusealpha,1;smooth,0.025;diffusealpha,0;smooth,0.025;diffusealpha,1;smooth,0.025;diffusealpha,0;smooth,0.025;diffusealpha,1;smooth,0.025;diffusealpha,0;smooth,0.025;diffusealpha,1;smooth,0.025;diffusealpha,0;);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "arr2" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X+135;y,SCREEN_CENTER_Y+45;diffusealpha,0;zoomx,-1);
		NextSongMessageCommand=cmd(stoptweening;x,SCREEN_CENTER_X+135;smooth,0.025;diffusealpha,1;smooth,0.025;diffusealpha,0;smooth,0.025;diffusealpha,1;smooth,0.025;diffusealpha,0;smooth,0.025;diffusealpha,1;smooth,0.025;diffusealpha,0;smooth,0.025;diffusealpha,1;smooth,0.025;diffusealpha,0;);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "bnrframe" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-78;diffusealpha,.5);
	}
};

--Sound
t[#t+1] = Def.ActorFrame {
	LoadActor( "../change" )..{
		OnCommand=cmd(stop);
		PreviousSongMessageCommand=cmd(stop;sleep,0;play);
		NextSongMessageCommand=cmd(stop;sleep,0;play);
	};
};

-- t[#t+1] = Def.ActorFrame {
-- 	LoadActor( "../_playmode" )..{
-- 		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM;draworder,1);
-- 	}
-- };

return t