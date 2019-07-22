testing
displaysFormula

	^ (formula class hasFormulaFormat: unacceptedContents) and: [self morph isEditing]