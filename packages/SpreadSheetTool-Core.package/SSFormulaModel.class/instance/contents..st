interaction
contents: aTextOrString

	self formula input: aTextOrString asString.
	self changed: self with: #contents.
	^ true