initialize-release
initializeModelForClass: aClass withConfig: aConfig

	(self setFormulaSelection: nil) ifFalse: [^ self].
	model ifNotNil: #release.
	World stopStepping: self.
	
	modelConfig := aConfig.
	model := aClass
		perform: modelConfig constructor
		withEnoughArguments: {self tool. self getterFormula}.
	self migrateModel.
	model addDependent: self.
	self changed: #buildCell.
	latestHash := nil.
	self postInitialize.