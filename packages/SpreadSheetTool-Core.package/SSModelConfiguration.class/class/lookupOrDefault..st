instances
lookupOrDefault: aClass 

	^ knownConfigurations
		at: aClass
		ifAbsent: [self newFor: aClass]