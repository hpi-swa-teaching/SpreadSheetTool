open and save
removeSheetNamed: aString ifAbsent: aBlock
	
	^ savedSheets removeKey: aString ifAbsent: aBlock