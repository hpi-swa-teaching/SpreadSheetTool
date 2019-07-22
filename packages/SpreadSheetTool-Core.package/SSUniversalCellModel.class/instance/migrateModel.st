initialize-release
migrateModel

	getterFormula isHybrid: self hasStandaloneModel.
	(self hasStandaloneModel ifTrue: [model] ifFalse: [getterModel])
		adoptFormula.