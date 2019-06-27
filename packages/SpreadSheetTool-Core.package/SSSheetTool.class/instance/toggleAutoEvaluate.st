interaction
toggleAutoEvaluate

	contentModels autoEvaluateActivated: contentModels autoEvaluateActivated not.
	self changed: #labelForAutoEvaluate.
	contentModels autoEvaluateActivated ifTrue: [
		contentModels refreshAll].