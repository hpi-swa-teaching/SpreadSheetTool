instance creation
owner: anObject getProperty: aGetter setProperty: aSetter

	^ self new
		owner: anObject;
		getProperty: aGetter;
		setProperty: aSetter;
		yourself