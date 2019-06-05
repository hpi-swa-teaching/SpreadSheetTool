open and save
deleteSheet
	
	savedSheets ifEmpty: [
		UIManager inform: 'There are no sheets to delete'.
		^ self].
	(UIManager default chooseFromDictionaryKeys: savedSheets)
		ifNotNil: [:sheetName | self removeSheetNamed: sheetName].