interaction
toggleAutoEvaluate

	contentModels autoEvaluateActivated: contentModels autoEvaluateActivated not.
	contentModels autoEvaluateActivated ifTrue: [
		contentModels refreshAll].