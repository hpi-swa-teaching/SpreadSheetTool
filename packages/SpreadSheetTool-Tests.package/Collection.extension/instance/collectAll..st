*SpreadSheetTool-Tests-enumerating
collectAll: aCollector

	| result |
	result := Set new.
	self collect: aCollector thenDo: [:collection | result addAll: collection].
	^ result