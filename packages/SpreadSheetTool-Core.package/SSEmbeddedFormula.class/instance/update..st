dependencies
update: what

	(what isKindOf: SSEmbeddedFormula) ifTrue: [self serverChanged].
	what = #object ifTrue: [self serverChanged].
	
	^ super update: what