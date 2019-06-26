interaction
saveContents: aTextOrString

	self cell rawValue: aTextOrString asString.
	self refreshValue.
	self parent contentsChanged.