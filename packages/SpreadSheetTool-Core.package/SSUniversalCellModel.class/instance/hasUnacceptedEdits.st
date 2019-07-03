as yet unclassified
hasUnacceptedEdits

	^ [self model
		removeDependent: self;
		flag: #workaround;
		hasUnacceptedEdits]
		ensure: [self model addDependent: self]