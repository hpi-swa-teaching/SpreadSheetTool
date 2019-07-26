interaction
toggleAutoEvaluate

	contentModels toggleAutoEvaluate.
	self changed: #autoEvaluateActivated; changed: #labelForAutoEvaluate.
	self autoEvaluateActivated ifTrue: [
		self disableSteppingWhile: [contentModels computeAll]].