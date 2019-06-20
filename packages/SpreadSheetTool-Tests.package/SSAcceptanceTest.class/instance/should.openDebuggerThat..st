assertions
should: aBlock openDebuggerThat: aSelector

	^ self
		should: aBlock
		raise: Exception
		that: [:e | [e defaultAction]
			on: UnhandledError
			do: aSelector]