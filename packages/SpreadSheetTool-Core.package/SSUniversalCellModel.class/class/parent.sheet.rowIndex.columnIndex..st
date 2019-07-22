instance creation
parent: aModel sheet: aSheet rowIndex: aRow columnIndex: aColumn

	^ self basicNew
		parent: aModel;
		sheet: aSheet;
		rowIndex: aRow columnIndex: aColumn;
		initialize;
		yourself