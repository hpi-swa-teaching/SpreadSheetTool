as yet unclassified
acceptTextInModel

	[[self beBusy.
	self model perform: generateOutputSelector with: self getText.
	hasEditFocus := false]
		onInterruptEnsure: [self hasEditFocus: true]]
			ensure: [self beReady].
	super setText: self getOutput.
	self update: #style.
	^ true