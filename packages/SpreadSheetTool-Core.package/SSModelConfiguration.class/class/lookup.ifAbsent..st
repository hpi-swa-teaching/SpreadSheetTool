instances
lookup: aClass ifAbsent: aBlock

	^ knownConfigurations
		at: aClass
		ifAbsent: aBlock