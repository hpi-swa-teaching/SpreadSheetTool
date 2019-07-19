testing
wantsToAutosave

	^ (self displaysFormula) not and: [
		self parent autoEvaluateActivated ==> [clients isEmpty]]