testing data
someOtherSheetName

	^ anotherSheetName ifNil: [| name |
		name := self someSheetName, '2'.
		sheetHeap add: (anotherSheetName := name)]