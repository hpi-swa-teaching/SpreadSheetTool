dependencies
withoutObservingDo: aBlock

	^ [self model
		removeDependent: self;
		flag: #workaround.
	aBlock value]
		ensure: [self model addDependent: self]