dependencies
removeClient: aClient

	^ (self model class canUnderstand: #addClient:)
		ifTrue: [self model removeClient: aClient]
		ifFalse: [self removeDependent: aClient]