*SpreadSheetTool-Tests-extensions
should: aBlock raise: anException butHandle: anotherBlock 

	^ self
		should: aBlock
		raise: anException
		that: [:e | true]
		butHandle: anotherBlock