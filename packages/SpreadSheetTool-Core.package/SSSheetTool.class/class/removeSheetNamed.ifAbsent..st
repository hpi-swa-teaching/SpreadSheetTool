as yet unclassified
removeSheetNamed: aString ifAbsent: aBlock
	
	^ savedSheets removeKey: aString ifAbsent: aBlock