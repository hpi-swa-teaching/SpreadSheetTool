instance creation
parent: aModel getProperty: aGetter setProperty: aSetter

	^ (self parent: aModel)
		getProperty: aGetter;
		setProperty: aSetter;
		yourself