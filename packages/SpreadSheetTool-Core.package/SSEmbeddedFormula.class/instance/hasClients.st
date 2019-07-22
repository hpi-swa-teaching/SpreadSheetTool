dependencies
hasClients

	^ self dependents anySatisfy: [:dependent | dependent isKindOf: SSEmbeddedFormula]