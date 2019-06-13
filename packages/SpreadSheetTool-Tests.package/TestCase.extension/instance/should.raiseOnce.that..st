*SpreadSheetTool-Tests-extensions
should: aBlock raiseOnce: anExceptionalEvent that: aSelector
	
	^ self
		should: aBlock
		raiseOnce: anExceptionalEvent
		that: aSelector
		butHandle: []