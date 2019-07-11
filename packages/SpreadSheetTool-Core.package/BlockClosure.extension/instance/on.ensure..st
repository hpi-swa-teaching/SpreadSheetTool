*SpreadSheetTool-Core-exceptions
on: exceptionOrExceptionSet ensure: aBlock

	^ self
		on: exceptionOrExceptionSet
		do: [:exception |
			aBlock value.
			exception pass]