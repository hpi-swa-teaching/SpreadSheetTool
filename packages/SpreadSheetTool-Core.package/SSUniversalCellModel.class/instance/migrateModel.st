initialize-release
migrateModel

	(self hasStandaloneModel ifTrue: [model] ifFalse: [getterModel])
		adoptFormula.