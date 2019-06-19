interaction
saveContents: aTextOrString

	self cell rawValue: aTextOrString asString.
	self parent contentsChanged