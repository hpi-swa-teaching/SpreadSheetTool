tools
enableAutoEvaluate

	self findAutoEvaluateToggle in: [:toggle |
		toggle getModelState ifFalse: [toggle click]].