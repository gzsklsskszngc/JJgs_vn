-------���߷��䷽ѧϰ�ű�--------
function OnUse()
	local nGene
	local nSKIllId
	local nLevel
	nGene,nSKIllId = GetMainLifeSkill()
	nLevel=GetLifeSkillLevel(1,5)
	if nGene==1 and nSKIllId==5 and nLevel>=50 then
		AddRecipe(891)
		AddRecipe(892)
		AddRecipe(893)
		AddRecipe(894)
		Msg2Player("B�n h�c ���c c�ch l�m: Thi�u D��ng th��ng")
		DelItem(2,1,453,1)
		else
			Msg2Player("C�p 50 tr� l�n m�i h�c ���c k� n�ng ch� t�o h� gi�p, �i�u ki�n c�a b�n ch�a ��!")	
	end
end