local numbered_stages= {
	Stage_1st= true,
	Stage_2nd= true,
	Stage_3rd= true,
	Stage_4th= true,
	Stage_5th= true,
	Stage_6th= true,
	Stage_Next= true,
}

function thified_curstage_index(on_eval)
	local cur_stage= GAMESTATE:GetCurrentStage()
	local adjust= 1
	local upper = false
	-- hack: ScreenEvaluation shows the current stage, but it needs to show
	-- the last stage instead.  Adjust the amount.
	if on_eval then
		adjust= 0
	end

	local ordinal = "th";

	if GAMESTATE:GetCurrentStageIndex() + adjust == 1 then
		ordinal ="st";
	elseif GAMESTATE:GetCurrentStageIndex() + adjust == 2 then
		ordinal ="nd";
	elseif GAMESTATE:GetCurrentStageIndex() + adjust == 3 then
		ordinal ="rd";
	end

	if GAMESTATE:GetCurrentStage() == "Stage_Final" or GAMESTATE:IsExtraStage() or GAMESTATE:IsExtraStage2() then
		ordinal = "";
		upper = true;
	end

	if numbered_stages[cur_stage] then
		return GAMESTATE:GetCurrentStageIndex() + adjust .. ordinal
	else
		if upper then
			return string.upper(ToEnumShortString(cur_stage) .. ordinal)
		else
			return ToEnumShortString(cur_stage) .. ordinal
		end
	end
end