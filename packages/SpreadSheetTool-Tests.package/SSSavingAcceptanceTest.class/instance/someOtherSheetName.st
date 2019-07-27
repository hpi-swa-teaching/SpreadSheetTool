testing data
someOtherSheetName

	^ anotherSheetName ifNil: [anotherSheetName :=
		self generateSheetName: self name, '2']