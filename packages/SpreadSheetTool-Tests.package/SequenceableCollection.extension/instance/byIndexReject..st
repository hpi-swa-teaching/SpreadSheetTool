*SpreadSheetTool-Tests-enumerating
byIndexReject: aBlock
	
	^ self byIndexSelect: [:index | (aBlock value: index) not]