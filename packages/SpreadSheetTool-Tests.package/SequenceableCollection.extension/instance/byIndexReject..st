*SpreadSheetTool-Tests-enumerating
byIndexReject: aBlock
	
	^ self selectByIndex: [:index | (aBlock value: index) not]