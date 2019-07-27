testing
wantsToAutosave

	^ self displaysFormula not and: [
		self tool autoEvaluateActivated ==> [formula hasClients not]]