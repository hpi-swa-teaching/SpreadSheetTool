dependencies
update: what

	(what isKindOf: SSEmbeddedFormula) ifTrue: [self serverChanged].
	
	^ super update: what