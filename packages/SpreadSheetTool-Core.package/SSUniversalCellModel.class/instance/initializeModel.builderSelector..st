initialize-release
initializeModel: aClass builderSelector: aSelector

	model ifNotNil: #release.
	model := [aClass
		perform: #parent:sheet:rowIndex:columnIndex:
		withEnoughArguments: {self parent. sheet. rowIndex. columnIndex}]
			on: MessageNotUnderstood
			do: [aClass new].
	model addDependent: self.
	builderSelector := aSelector.
	self changed: #morphs.