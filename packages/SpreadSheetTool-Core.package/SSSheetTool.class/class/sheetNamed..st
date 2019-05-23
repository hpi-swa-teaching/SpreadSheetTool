open and save
sheetNamed: aString	
	
	^ savedSheets at: aString ifAbsent: [nil]