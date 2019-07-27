copying
veryDeepInner: deepCopier

	super veryDeepInner: deepCopier.
	contentSheet := contentSheet veryDeepCopyWith: deepCopier.
	"Don't copy any morph!"
	cellMorphs := Dictionary new.
	oldCellMorphs := nil.
	subject := nil.
	steppingWindow := nil.