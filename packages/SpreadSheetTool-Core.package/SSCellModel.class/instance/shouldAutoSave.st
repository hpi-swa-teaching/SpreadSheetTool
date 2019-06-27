interaction
shouldAutoSave

	^ self isFormula not and: [self parent autoEvaluateActivated ==> [clients isEmpty]]