copying
veryDeepInner: deepCopier

	super veryDeepInner: deepCopier.
	header := header veryDeepCopyWith: deepCopier.