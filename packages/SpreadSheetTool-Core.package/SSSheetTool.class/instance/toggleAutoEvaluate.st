interaction
toggleAutoEvaluate

	contentSheet toggleAutoEvaluate.
	self changed: #autoEvaluateActivated.
	self autoEvaluateActivated ifTrue: [
		self disableSteppingWhile: [contentSheet computeAll]].