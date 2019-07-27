interaction
contents: aTextOrString
	"Compile the input and inform our model of the change"

	self formula
		input: aTextOrString asString
		notifying: self controller
		ifFail: [^ false].
	self morph update: #contents.
	self changed: self with: #contents.
	^ true