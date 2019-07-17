instances
lookupOrDefault: aClass 

	^ self lookup: aClass ifAbsent: [self newFor: aClass]