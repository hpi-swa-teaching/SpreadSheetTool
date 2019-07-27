instance creation
tool: aTool sheet: aSheet rowIndex: aRow columnIndex: aColumn

	^ self basicNew
		tool: aTool;
		sheet: aSheet;
		rowIndex: aRow columnIndex: aColumn;
		initialize;
		yourself