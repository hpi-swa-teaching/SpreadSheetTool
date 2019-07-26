dependencies
addClient: aClient

	^ (self model class canUnderstand: #addClient:)
		ifTrue: [self model addClient: aClient]
		ifFalse: [self addDependent: aClient]