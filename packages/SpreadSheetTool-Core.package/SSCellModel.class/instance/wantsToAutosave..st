testing
wantsToAutosave: aString

	^ (cell class isFormula: aString) not and: [
		self parent autoEvaluateActivated ==> [clients isEmpty]]