interaction
acceptContents: aTextOrString

	self
		saveContents: aTextOrString;
		editMode: false.
	^ false