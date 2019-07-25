failures
expectedFailures

	^ super expectedFailures
		copyWith: #nonFormulaCellHasNoAutocompletion "only works if new version of Autocompletion is installed"