copying
veryDeepInner: deepCopier

	super veryDeepInner: deepCopier.
	contentSheet := contentSheet veryDeepCopyWith: deepCopier.
	cellMorphs := Dictionary new.
	oldCellMorphs := nil.
	subject := nil.
	steppingWindow := nil.