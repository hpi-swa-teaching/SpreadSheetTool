*SpreadSheetTool-Tests-enumerating
rejectByIndex: aBlock
	
	^ self selectByIndex: [:index | (aBlock value: index) not]