failures
expectedFailures

	| failures |
	failures := super expectedFailures asOrderedCollection.
	((PackageInfo named: #Autocompletion) methods anySatisfy: [:method |
		method compiledMethod hasLiteral: #wantsToCloseAutocompletion]) ifFalse: [
			failures add: #testNonFormulaCellHasNoAutocompletion
			"only works if new version of Autocompletion is installed"].
	^ failures