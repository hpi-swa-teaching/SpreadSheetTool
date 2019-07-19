interaction
contents: aTextOrString

	self editContents: aTextOrString.
	self cell rawValue: aTextOrString asString.
	[self refreshValue]
		on: Abort
		do: [^ false].
	^ true