instances
lookupOrDefaultForClass: aClass 

	^ knownConfigurations
		at: aClass
		ifAbsent: [self newFor: aClass]