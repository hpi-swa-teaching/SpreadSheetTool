copying
veryDeepInner: deepCopier

	super veryDeepInner: deepCopier.
	contentModels := contentModels veryDeepCopyWith: deepCopier.
	cellMorphs := Dictionary new.
	oldCellMorphs := nil.
	subject := nil.
	steppingWindow := nil.