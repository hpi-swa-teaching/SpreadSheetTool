testing
displaysFormula

	^ (self hasFormulaFormat: unacceptedContents) and: [self morph isEditing]