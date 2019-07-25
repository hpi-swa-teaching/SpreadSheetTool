event handling
acceptTextInModel

	self isEditing ifFalse: [^ self].
	(super acceptTextInModel)
		ifFalse: [^ false].
	self
		hasEditFocus: false;
		hasUnacceptedEdits: false.
	self refreshText.
	^ true