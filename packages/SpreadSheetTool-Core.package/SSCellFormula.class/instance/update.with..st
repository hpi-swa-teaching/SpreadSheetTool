dependencies
update: anAspect with: anObject

	anAspect = #server ifTrue: [self serverChanged].
	(anAspect = #output and: [(anObject isKindOf: SSCellFormula) not])
		ifTrue: [self serverChanged].
	^ super update: anAspect with: anObject