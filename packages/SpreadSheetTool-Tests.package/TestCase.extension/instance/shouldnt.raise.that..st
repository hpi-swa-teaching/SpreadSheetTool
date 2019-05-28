*SpreadSheetTool-Tests-accessing
shouldnt: aBlock raise: anExceptionalEvent that: aSelectorBlock
	^ [ aBlock value ]
		on: anExceptionalEvent
		do: [:e |
			(e in: aSelectorBlock) ifFalse: [^ e pass].
			self fail: 'Block raised ', e className, ': ', e messageText].