building suites
wantsToTest: aSelector

	^ (super wantsToTest: aSelector) and: [
		(self requiresLongStage: aSelector) ==> [self isLongStage]]