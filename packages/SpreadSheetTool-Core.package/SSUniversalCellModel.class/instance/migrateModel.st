initialize-release
migrateModel

	getterFormula isHybrid: self hasHybridModel.
	(self hasStandaloneModel ifTrue: [model] ifFalse: [getterModel])
		adoptFormula.