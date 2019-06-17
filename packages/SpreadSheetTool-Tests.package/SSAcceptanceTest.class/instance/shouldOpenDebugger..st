assertions
shouldOpenDebugger: aBlock

	^ self
		should: aBlock
		raise: Exception
		that: [:e | [e defaultAction]
			on: UnhandledError
			do: [true]]