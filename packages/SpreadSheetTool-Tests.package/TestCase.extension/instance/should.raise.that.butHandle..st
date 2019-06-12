*SpreadSheetTool-Tests-extensions
should: aBlock raise: anExceptionalEvent that: aSelectorBlock butHandle: anotherBlock
	
	| raised result |
	raised := false.
	result := [ aBlock value ]
		on: anExceptionalEvent
		do: [:exception |
			(exception in: aSelectorBlock) ifFalse: [^ exception pass].
			raised := true.
			anotherBlock value: exception].
	self assert: raised description: 'Block should have raised ', anExceptionalEvent, ' but didn''t'.
	^ result