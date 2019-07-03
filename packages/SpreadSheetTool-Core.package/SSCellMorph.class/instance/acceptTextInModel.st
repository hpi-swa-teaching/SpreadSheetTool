as yet unclassified
acceptTextInModel

	self model perform: generateOutputSelector with: self getText.
	super setText: self getOutput.
	self update: #style.
	^ true