as yet unclassified
acceptTextInModel

	self model perform: generateOutputSelector.
	self setText: self getOutput.
	self update: #style.
	^ true