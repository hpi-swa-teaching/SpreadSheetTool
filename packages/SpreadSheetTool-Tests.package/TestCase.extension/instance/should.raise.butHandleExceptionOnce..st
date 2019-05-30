*SpreadSheetTool-Tests-extensions
should: aBlock raise: anException butHandleExceptionOnce: anotherBlock 

	| hasRaised |
	hasRaised := false.
	aBlock
		on: anException
		do: [:exception |
			"self halt."
			hasRaised ifTrue: [exception pass].
			hasRaised := true.
			anotherBlock value: exception].
	self assert: hasRaised description: 'aBlock should raise ', anException asString.