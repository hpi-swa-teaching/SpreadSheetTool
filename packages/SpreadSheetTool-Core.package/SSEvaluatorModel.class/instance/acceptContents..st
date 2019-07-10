interaction
acceptContents: aTextOrString

	self object: (Compiler evaluate: aTextOrString asString).
	^ true