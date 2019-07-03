event handling
acceptTextInModel

	self generateOutput.
	self
		hasEditFocus: false;
		hasUnacceptedEdits: false.
	self refreshText.
	^ true