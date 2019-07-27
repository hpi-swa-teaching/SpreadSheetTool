*SpreadSheetTool-Tests-enumerating
byIndexReject: aRejectorBlock thenCollect: aCollectorBlock
	
	^ (self byIndexReject: aRejectorBlock)
		collect: aCollectorBlock
		