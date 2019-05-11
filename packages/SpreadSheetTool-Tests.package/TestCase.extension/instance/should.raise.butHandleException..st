*SpreadSheetTool-Tests-extensions
should: aBlock raise: anException butHandleException: anotherBlock 

	| hasRaised |
	hasRaised := false.
	aBlock
		on: anException
		do: [:exception |
			hasRaised := true.
			anotherBlock value: exception].
	self assert: hasRaised.