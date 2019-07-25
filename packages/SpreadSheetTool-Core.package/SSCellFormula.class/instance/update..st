dependencies
update: what

	(what isKindOf: SSCellFormula) ifTrue: [self serverChanged].
	^ super update: what