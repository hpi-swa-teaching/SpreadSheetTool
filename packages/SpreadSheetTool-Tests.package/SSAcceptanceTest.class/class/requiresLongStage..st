staging
requiresLongStage: aSelector

	^ (self compiledMethodAt: aSelector) hasPragma: #longStage