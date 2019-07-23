copying
veryDeepInner: deepCopier

	super veryDeepInner: deepCopier.
	
	sheet := sheet veryDeepCopyWith: deepCopier.
	model := model veryDeepCopyWith: deepCopier.
	servers := servers veryDeepCopyWith: deepCopier.
	context := nil.