testing
displaysFormula

	^ (self class hasFormulaFormat: unacceptedContents) and: [self morph isEditing]