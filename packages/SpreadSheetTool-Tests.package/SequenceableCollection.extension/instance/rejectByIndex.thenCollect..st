*SpreadSheetTool-Tests-enumerating
rejectByIndex: aRejectorBlock thenCollect: aCollectorBlock
	
	^ (self rejectByIndex: aRejectorBlock)
		collect: aCollectorBlock
		