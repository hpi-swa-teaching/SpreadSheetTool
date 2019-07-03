as yet unclassified
addClient: aClient

	(model class canUnderstand: #addClient:)
		ifTrue: [model addClient: aClient]
		ifFalse: [model addDependent: aClient].