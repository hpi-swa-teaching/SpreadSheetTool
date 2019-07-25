testing data
someSheetName

	^ sheetName ifNil: [sheetName :=
		self generateSheetName: self name]