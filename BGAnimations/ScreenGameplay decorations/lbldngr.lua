return Def.ActorFrame {

InitCommand=cmd(diffusealpha,0);
HealthStateChangedMessageCommand=function(self, param)
	if param.HealthState == "HealthState_Danger" then
		self:diffusealpha(1)
	else
		self:diffusealpha(0)
	end
end;

LoadActor("danger")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+4;diffuseblink;effectperiod,.517;effectcolor1,1,1,1,1;effectcolor2,0,0,0,0);
};

}