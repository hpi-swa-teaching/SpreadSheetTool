tools
enableAutoEvaluate

	self findAutoEvaluateToggle in: [:toggle |
		toggle isChecked ifFalse: [toggle click]].
	self subject redrawDopeyControls.