interaction
acceptContents: aTextOrString

	self saveContents: aTextOrString.
	self editMode: false.
	^ false