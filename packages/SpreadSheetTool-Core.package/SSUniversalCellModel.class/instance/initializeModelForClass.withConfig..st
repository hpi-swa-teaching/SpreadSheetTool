initialize-release
initializeModelForClass: aClass withConfig: aConfig

	| latestFormula |
	latestFormula := ((model isKindOf: SSFormulaModel) and: [getterBlock isNil])
		ifTrue: [model cell rawValue]
		ifFalse: [getterFormula].
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
	self changed: #buildCell.
	latestFormula isEmptyOrNil ifFalse: [
		(model isKindOf: SSFormulaModel)
			ifFalse: [self
				compileGetter: latestFormula;
				flag: #workaround]
			ifTrue: [
				self withoutObservingDo: [
					model acceptContents: latestFormula.
					self flag: #workaround].
				getterFormula := getterBlock := nil]].
	latestHash := nil.