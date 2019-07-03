as yet unclassified
initializeModel: aClass

	model ifNotNil: #release.
	model := [aClass
		perform: #parent:sheet:rowIndex:columnIndex:
		withEnoughArguments: {self parent. sheet. rowIndex. columnIndex}]
			on: MessageNotUnderstood
			do: [aClass new].
	model addDependent: self.
	self changed: #morphs.