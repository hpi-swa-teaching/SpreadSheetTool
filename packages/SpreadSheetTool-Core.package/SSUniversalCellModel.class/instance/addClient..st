dependencies
addClient: aClient

	(model class canUnderstand: #addClient:)
		ifTrue: [model addClient: aClient]
		ifFalse: [self addDependent: aClient].