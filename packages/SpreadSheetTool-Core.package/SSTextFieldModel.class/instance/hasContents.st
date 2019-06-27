testing
hasContents
	
	^ self contents isEmptyOrNil not or: [self hasUnacceptedChanges]