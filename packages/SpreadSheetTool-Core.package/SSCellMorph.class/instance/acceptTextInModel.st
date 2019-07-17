event handling
acceptTextInModel

	(self acceptContents: self text copy)
		ifFalse: [^ false].
	self
		hasEditFocus: false;
		hasUnacceptedEdits: false.
	self refreshText.
	^ true