assertions
should: aBlock openDebuggerNotifying: aFilter

	^ self
		should: aBlock
		openDebuggerThat: [:unhandledError | ('*', aFilter, '*')
			match: unhandledError exception messageText]