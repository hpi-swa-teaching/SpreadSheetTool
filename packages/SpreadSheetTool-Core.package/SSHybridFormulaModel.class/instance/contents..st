interaction
contents: aTextOrString

	self editContents: aTextOrString.
	self formula
		input: aTextOrString asString
		notifying: self controller
		ifFail: [^ false].
	self tool disableSteppingWhile: [self computeOutput].
	tool update: #contents.
	^ true