*SpreadSheetTool-Tests-extensions
should: aBlock raise: anExceptionalEvent that: aSelectorBlock
	
	^ self
		should: aBlock
		raise: anExceptionalEvent
		that: aSelectorBlock
		butHandle: [:e]