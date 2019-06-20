interaction
deleteSheetFromImage
	
	self class savedSheets ifEmpty: [
		UIManager inform: 'There are no sheets to delete'.
		^ self].
	(UIManager default chooseFromValues: self class savedSheets keys title: 'Delete sheet')
		ifNotNil: [:sheetName | 
			(UIManager default confirm: 'Do you really want to delete ', sheetName, '?') 
			 	ifTrue: [self class removeSheetNamed: sheetName]].