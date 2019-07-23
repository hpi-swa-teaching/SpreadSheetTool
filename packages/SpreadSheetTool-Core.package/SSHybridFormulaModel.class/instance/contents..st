as yet unclassified
contents: aTextOrString

	self editContents: aTextOrString.
	self formula input: aTextOrString asString.
	[self tool disableSteppingWhile: [self computeOutput]]
		on: Abort
		do: [^ false].
	tool update: #contents.
	^ true