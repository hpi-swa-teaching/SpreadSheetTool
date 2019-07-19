testing
displaysFormula

	^ (cell class isFormula: unacceptedContents) and: [morph isEditing]