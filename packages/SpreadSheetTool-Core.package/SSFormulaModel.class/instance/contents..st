interaction
contents: aTextOrString

	self formula
		input: aTextOrString asString
		notifying: self controller
		ifFail: [^ false].
	self morph update: #contents.
	self changed: self with: #contents.
	^ true