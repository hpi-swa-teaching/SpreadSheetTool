*SpreadSheetTool-Tests-extensions
should: aBlock raiseOnce: anException butHandle: anotherBlock 

	| hasRaised |
	hasRaised := false.
	aBlock
		on: anException
		do: [:exception |
			hasRaised ifTrue: [exception pass].
			hasRaised := true.
			anotherBlock cull: exception].
	self assert: hasRaised description: 'aBlock should raise ', anException asString.