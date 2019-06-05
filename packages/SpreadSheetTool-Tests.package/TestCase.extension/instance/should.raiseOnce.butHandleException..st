*SpreadSheetTool-Tests-extensions
should: aBlock raiseOnce: anException butHandleException: anotherBlock 

	| hasRaised |
	hasRaised := false.
	aBlock
		on: anException
		do: [:exception |
			hasRaised ifTrue: [exception pass].
			hasRaised := true.
			anotherBlock value: exception].
	self assert: hasRaised description: 'aBlock should raise ', anException asString.