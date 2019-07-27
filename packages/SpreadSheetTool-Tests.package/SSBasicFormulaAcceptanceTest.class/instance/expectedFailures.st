failures
expectedFailures

	| failures |
	failures := super expectedFailures asOrderedCollection.
	PackageOrganizer default packageNamed: #Autocompletion ifPresent: [:package |
		(package methods anySatisfy: [:method |
			method compiledMethod hasLiteral: #wantsToCloseAutocompletion]) ifFalse: [
				failures add: #testNonFormulaCellHasNoAutocompletion
				"this works iff new version of Autocompletion is installed"]].
	^ failures