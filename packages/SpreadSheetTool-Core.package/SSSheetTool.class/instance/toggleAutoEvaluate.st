interaction
toggleAutoEvaluate

	contentModels toggleAutoEvaluate.
	self changed: #autoEvaluateActivated; changed: #labelForAutoEvaluate.
	contentModels autoEvaluateActivated ifTrue: [
		self disableSteppingWhile: [contentModels computeAll]].