interaction
contents: aTextOrString

	self formula input: aTextOrString asString.
	self morph update: #contents.
	self changed: self with: #contents.
	^ true