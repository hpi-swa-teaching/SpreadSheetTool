*SpreadSheetTool-Tests-enumerating
selectByIndex: aBlock
	
	| selected |
	selected := self species new.
	self withIndexDo: [:item :index |
		(aBlock value: index)
			ifTrue: [selected add: item]].
	^ selected