return Def.ActorFrame {
InitCommand=cmd(diffusealpha,0);
HealthStateChangedMessageCommand=function(self, param)
	if param.HealthState == "HealthState_Danger" then
		self:diffusealpha(1)
	else
		self:diffusealpha(0)
	end
end;

LoadActor("warningbg")..{
	InitCommand=cmd(FullScreen;);
	OnCommand=function(self)
		local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
		local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
		self:customtexturerect(0,0,w,h);
		self:texcoordvelocity(0.5,0);
		--
		self:diffuseblink();
		self:effectperiod(.517);
		self:effectcolor1(1,1,1,1);
		self:effectcolor2(0,0,0,0);
	end;
};

}