tools
disableAutoEvaluate

	self findAutoEvaluateToggle in: [:toggle |
		toggle isChecked ifTrue: [toggle click]].
	self subject redrawDopeyControls.