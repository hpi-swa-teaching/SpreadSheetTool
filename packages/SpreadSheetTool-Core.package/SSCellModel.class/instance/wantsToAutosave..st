interaction
wantsToAutosave: aString

	^ (self isFormula: aString) not and: [
		self parent autoEvaluateActivated ==> [clients isEmpty]]