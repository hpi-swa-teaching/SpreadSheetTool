as yet unclassified
initializeModel: aClass

	model := [aClass
		perform: #"newWith:forRow:forColumn:"parent:sheet:rowIndex:columnIndex:
		withEnoughArguments: {self parent. sheet. rowIndex. columnIndex}]
			on: MessageNotUnderstood
			do: [aClass new].
	self changed: #morphs.