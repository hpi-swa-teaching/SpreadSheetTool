nested model
migrateModel

	(self hasStandaloneModel ifTrue: [self model] ifFalse: [self getterModel])
		adoptFormula.