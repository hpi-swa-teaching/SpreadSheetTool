dependencies
removeClient: aClient

	(model class canUnderstand: #addClient:)
		ifTrue: [model removeClient: aClient]
		ifFalse: [self removeDependent: aClient].