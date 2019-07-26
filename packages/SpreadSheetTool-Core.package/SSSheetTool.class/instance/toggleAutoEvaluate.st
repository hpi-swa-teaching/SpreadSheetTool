interaction
toggleAutoEvaluate

	contentSheet toggleAutoEvaluate.
	self changed: #autoEvaluateActivated; changed: #labelForAutoEvaluate.
	self autoEvaluateActivated ifTrue: [
		self disableSteppingWhile: [contentSheet computeAll]].