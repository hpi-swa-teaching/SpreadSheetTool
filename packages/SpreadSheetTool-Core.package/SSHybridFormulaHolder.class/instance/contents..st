interaction
contents: aTextOrString
	"Compile the input, compute its value and inform our tool of the change"

	self editContents: aTextOrString.
	self formula
		input: aTextOrString asString
		notifying: self controller
		ifFail: [^ false].
	self tool disableSteppingWhile: [self computeOutput].
	tool update: #contents.
	^ true