interaction
toggleAutoEvaluate

	contentModels autoEvaluateActivated: contentModels autoEvaluateActivated not.
	self changed: #autoEvaluateActivated; changed: #labelForAutoEvaluate.
	contentModels autoEvaluateActivated ifTrue: [
		contentModels refreshAll].