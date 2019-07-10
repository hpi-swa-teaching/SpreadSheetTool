instances
lookupForClass: aClass

	^ knownConfigurations
		at: aClass
		ifAbsentPut: [(self requestConfigurationFor: aClass)
			ifNil: [^ nil]]