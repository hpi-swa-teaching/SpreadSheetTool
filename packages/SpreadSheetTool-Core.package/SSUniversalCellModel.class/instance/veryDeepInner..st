copying
veryDeepInner: deepCopier

	super veryDeepInner: deepCopier.
	'sheet rowIndex columnIndex model latestHash modelConfig getterFormula getterBlock setterFormula setterBlock formulaSelection'.
	model := model veryDeepCopyWith: deepCopier.
	latestHash := nil.