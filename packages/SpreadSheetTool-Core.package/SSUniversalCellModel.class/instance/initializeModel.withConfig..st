initialize-release
initializeModel: aClass withConfig: aConfig

	model ifNotNil: #release.
	World stopStepping: self.
	
	modelConfig := aConfig.
	model := aClass
		perform: modelConfig constructor
		withEnoughArguments: {self parent. sheet. rowIndex. columnIndex}.
	model addDependent: self.
	model wantsSteps ifTrue: [World
		startStepping: self
		at: Time millisecondClockValue
		selector: #stepModelAt:
		arguments: #()
		stepTime: nil].
	self changed: #morphs.