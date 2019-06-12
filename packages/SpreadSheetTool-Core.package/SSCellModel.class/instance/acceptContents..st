interaction
acceptContents: aTextOrString

	self cell rawValue: aTextOrString asString.
	self parent contentsChanged.
	self editMode: false.
	^ false