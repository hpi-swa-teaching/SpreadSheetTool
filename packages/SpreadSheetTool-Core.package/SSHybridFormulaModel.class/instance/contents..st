as yet unclassified
contents: aTextOrString

	self editContents: aTextOrString.
	self formula input: aTextOrString asString.
	[self computeOutput]
		on: Abort
		do: [^ false].
	^ true