copying
veryDeepInner: deepCopier

	super veryDeepInner: deepCopier.
	model := model veryDeepCopyWith: deepCopier.
	latestHash := nil.