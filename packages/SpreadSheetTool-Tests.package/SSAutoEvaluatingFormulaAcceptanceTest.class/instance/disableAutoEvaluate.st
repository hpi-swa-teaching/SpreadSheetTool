tools
disableAutoEvaluate

	self findAutoEvaluateToggle in: [:toggle |
		toggle getModelState ifTrue: [toggle click]].