*SpreadSheetTool-Tests-enumerating
cross: aCollection collect: aBlock

	| combinationCollections |
	combinationCollections := self collect: [:first |
		aCollection collect: [:second |
			aBlock value: first value: second]].
	^ combinationCollections reduce: #,