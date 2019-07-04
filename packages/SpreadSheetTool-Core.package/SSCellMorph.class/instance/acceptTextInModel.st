event handling
acceptTextInModel

	self acceptContents: self text copy.
	self
		hasEditFocus: false;
		hasUnacceptedEdits: false.
	self refreshText.
	^ true