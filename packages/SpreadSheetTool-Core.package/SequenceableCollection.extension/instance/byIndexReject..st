*SpreadSheetTool-Core-enumerating
byIndexReject: aBlock
	
	^ self byIndexSelect: [:index | (aBlock value: index) not]