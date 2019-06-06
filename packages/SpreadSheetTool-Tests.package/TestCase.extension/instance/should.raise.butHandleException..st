*SpreadSheetTool-Tests-extensions
should: aBlock raise: anException butHandleException: anotherBlock 

	^ self
		should: aBlock
		raise: anException
		that: [:e | true]
		butHandleException: anotherBlock