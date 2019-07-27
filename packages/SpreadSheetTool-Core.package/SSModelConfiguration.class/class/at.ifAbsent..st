accessing
at: aClass ifAbsent: aBlock

	^ knownConfigurations
		at: aClass
		ifAbsent: aBlock