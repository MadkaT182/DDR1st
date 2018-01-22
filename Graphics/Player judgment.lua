local player = Var "Player"

local JudgeCmds = {
	TapNoteScore_W1 = THEME:GetMetric( "Judgment", "JudgmentW1Command" );
	TapNoteScore_W2 = THEME:GetMetric( "Judgment", "JudgmentW2Command" );
	TapNoteScore_W3 = THEME:GetMetric( "Judgment", "JudgmentW3Command" );
	TapNoteScore_W4 = THEME:GetMetric( "Judgment", "JudgmentW4Command" );
	TapNoteScore_W5 = THEME:GetMetric( "Judgment", "JudgmentW5Command" );
	TapNoteScore_Miss = THEME:GetMetric( "Judgment", "JudgmentMissCommand" );
}

local TNSFrames = {
	TapNoteScore_W1 = 0;
	TapNoteScore_W2 = 1;
	TapNoteScore_W3 = 2;
	TapNoteScore_W4 = 3;
	TapNoteScore_W5 = 4;
	TapNoteScore_Miss = 5;
}

local style = GAMESTATE:GetCurrentStyle(player)
local StyleType = style:GetStyleType()
local ColsPerPlayer = style:ColumnsPerPlayer() 

--Only works for Double styles with equal numbers of columns per side, which is
--all of them in SM5.0/5.1
local function TrackToPad(track)
	return (track <= ColsPerPlayer/2) and 1 or 2
end


local t = Def.ActorFrame{}

local DoubleXOffset = THEME:GetMetric( "Judgment", "DoubleXOffset")
local PadXOffset = {[1]=-DoubleXOffset, [2]=DoubleXOffset}

--If only one pad exists, pass nil.
local function CreateJudgment(pad)
	local AnyTrackThisPad
	if not pad then
		--There's only one judgment, so all columns are acceptable to show.
		AnyTrackThisPad = function() return true end
	else
		--Notes is the params.Notes table JudgmentMessageCommand gives you.
		--Returns true if any note hit this row was on this pad, which means
		--this judgment should show it.
		AnyTrackThisPad = function(notes)
			if not pad then return true end
			for track, _ in pairs(notes) do
				if TrackToPad(track) == pad then
					return true
				end
			end
			return false
		end
	end

	local XOffset = PadXOffset[pad] or 0
	local name = pad and "JudgmentPad"..tostring(pad) or "Judgment"
	return Def.Sprite{
		Name="Judgment",
		Texture=THEME:GetPathG("Judgment", "Normal"),
		InitCommand=function(s) s:pause():visible(false):x(XOffset) end,
		OnCommand=THEME:GetMetric("Judgment","JudgmentOnCommand"),
		ResetCommand=function(s) s:finishtweening():stopeffect():visible(false) end,
		JudgmentMessageCommand=function(self, param)
			if param.Player ~= player or param.HoldNoteScore then return end
			if not AnyTrackThisPad(param.Notes) then return end

			local frame = TNSFrames[param.TapNoteScore]
			if not frame then return end
			local JudgmentCommand = JudgeCmds[param.TapNoteScore]

			self:playcommand("Reset"):visible(true):setstate(frame)
			JudgmentCommand(self)
		end,
	}
end

if StyleType == 'StyleType_OnePlayerTwoSides' or StyleType == 'StyleType_TwoPlayersSharedSides' then
	--two pad style
	for pad=1,2 do
		t[#t+1] = CreateJudgment(pad)
	end
else
	--one pad style
	t[#t+1] = CreateJudgment()
end

return t