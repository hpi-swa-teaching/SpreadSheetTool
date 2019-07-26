initialize-release
migrateModel

	(self hasStandaloneModel ifTrue: [model] ifFalse: [self getterModel])
		adoptFormula.