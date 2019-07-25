instance creation
parent: aModel getProperty: aGetter setProperty: aSetter

	^ self new
		parent: aModel;
		getProperty: aGetter;
		setProperty: aSetter;
		yourself