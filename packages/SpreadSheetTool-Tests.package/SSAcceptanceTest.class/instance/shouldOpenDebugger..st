assertions
shouldOpenDebugger: aBlock

	^ self
		should: aBlock
		openDebuggerThat: [true]