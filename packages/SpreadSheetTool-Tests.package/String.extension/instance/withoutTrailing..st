*SpreadSheetTool-Tests-converting
withoutTrailing: suffix

	^ (self endsWith: suffix)
		ifTrue: [self allButLast: suffix size]
		ifFalse: [self]