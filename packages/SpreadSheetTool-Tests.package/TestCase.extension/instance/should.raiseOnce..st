*SpreadSheetTool-Tests-extensions
should: aBlock raiseOnce: anException

	^ self
		should: aBlock
		raiseOnce: anException
		butHandle: []