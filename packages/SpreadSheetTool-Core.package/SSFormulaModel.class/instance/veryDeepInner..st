copying
veryDeepInner: deepCopier

	super veryDeepInner: deepCopier.
	formula := formula veryDeepCopyWith: deepCopier.