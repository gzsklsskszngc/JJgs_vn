Include("\\script\\online\\dragonboat06\\dragonboat_head.lua");
Include("\\script\\online\\dragonboat06\\mission_head.lua");
function main()
	if GetMissionV(MV_ROOMSTATE) == MS_STATE_STARTED or GetMissionV(MV_ROOMSTATE) == MS_STATE_WAITCOMPLETE then
		local nPos = GetTask(POSITION);
		if nPos < 49 then
			SetTask(POSITION,39)
		elseif nPos < 98 then
			SetTask(POSITION,88)
		elseif nPos < TRAPCOUNT then
			SetTask(POSITION,137)
		end;
	end;
end;