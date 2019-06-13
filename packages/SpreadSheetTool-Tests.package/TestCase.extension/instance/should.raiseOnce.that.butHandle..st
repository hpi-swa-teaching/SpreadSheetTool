*SpreadSheetTool-Tests-extensions
should: aBlock raiseOnce: anExceptionalEvent that: aSelector butHandle: aHandler
	
	| result wasRaised |
	wasRaised := false.
	result := aBlock
		on: anExceptionalEvent
		do: [:exception |
			wasRaised ifTrue: [exception pass].
			(aSelector value: exception) ifFalse: [exception pass].
			wasRaised := true.
			aHandler cull: exception].
	self assert: wasRaised description: 'Expected to raise ', anExceptionalEvent, ' but it wasn''t raised'.
	^ result