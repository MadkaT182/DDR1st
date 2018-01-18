local t = Def.ActorFrame {};
local width = 128;
local height = 80;
local scaling = 1;

t[#t+1] = Def.ActorFrame {
	InitCommand=function(self) t = self:GetChildren(); end;
	BeginCommand=cmd(draworder,2);
	OffCommand=cmd(linear,1;diffusealpha,0);
	Def.Quad{
		OnCommand=cmd(diffusecolor,Color.White;diffusealpha,0;zoomto,width,height);
	};
	Def.Sprite{
		Name="CdTitle";
		InitCommand=cmd();
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				if song:HasCDTitle() then
					width = 128;
					height = 80;
					self:LoadBackground(song:GetCDTitlePath());
					if self:GetWidth() > self:GetHeight() then
						scaling = width/self:GetWidth();
					else
						scaling = height/self:GetHeight();
					end
					self:zoom(scaling);
					self:SetTextureFiltering(false)
					self:diffusealpha(1);
				else
					self:diffusealpha(0);
				end;
			else
				self:diffusealpha(0);
			end;
		end;
	};
	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
};

return t