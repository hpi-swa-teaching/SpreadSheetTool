testing
hasContents
	
	^ (self contents ifNil: [false] ifNotNil: [:c | c isString ==> [c notEmpty]])
		or: [self hasUnacceptedEdits]