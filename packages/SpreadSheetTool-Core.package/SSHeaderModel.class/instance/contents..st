accessing
contents: aTextOrString

	self header label: aTextOrString asString.
	self modelContentsChanged.