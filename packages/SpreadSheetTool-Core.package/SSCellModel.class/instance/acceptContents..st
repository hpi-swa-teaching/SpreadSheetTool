interaction
acceptContents: aTextOrString

	self editContents: aTextOrString.
	self cell rawValue: aTextOrString asString.
	self refreshValue.