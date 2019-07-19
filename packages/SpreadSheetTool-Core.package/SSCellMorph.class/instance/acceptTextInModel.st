event handling
acceptTextInModel

	(super acceptTextInModel)
		ifFalse: [^ false].
	self
		hasEditFocus: false;
		hasUnacceptedEdits: false.
	self refreshText.
	^ true