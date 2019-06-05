open and save
deleteSheet
	
	savedSheets ifEmpty: [
		UIManager inform: 'There are no sheets to delete'.
		^ self].
	(UIManager default chooseFromValues: savedSheets keys)
		ifNotNil: [:sheetName | 
			(UIManager default confirm: 'Do you really want to delete ', sheetName, '?') 
			 	ifTrue: [self removeSheetNamed: sheetName]].