*SpreadSheetTool-Tests-enumerating
withKeysCollect: aBlock
	
	| newCollection |
	newCollection := self species new: self size.
	self associationsDo: [:each |
		newCollection at: each key put: (aBlock value: each key)].
	^ newCollection