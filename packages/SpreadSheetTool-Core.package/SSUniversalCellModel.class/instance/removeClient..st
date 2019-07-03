dependencies
removeClient: aClient

	(model class canUnderstand: #removeClient:)
		ifTrue: [model removeClient: aClient]
		ifFalse: [model removeDependent: aClient].