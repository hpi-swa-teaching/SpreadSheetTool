*SpreadSheetTool-Tests-accessing
should: aBlock raise: anExceptionalEvent that: aSelectorBlock
	
	| raised result |
	raised := false.
	result := [ aBlock value ]
		on: anExceptionalEvent
		do: [:e |
			(e in: aSelectorBlock) ifFalse: [^ e pass].
			raised := true].
	self assert: raised description: 'Block should have raised ', anExceptionalEvent, ' but didn''t'.
	^ result