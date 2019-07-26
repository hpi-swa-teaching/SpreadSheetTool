dependencies
removeClient: aClient
	"See class comment in SSCellFormula"

	^ (self model class canUnderstand: #addClient:)
		ifTrue: [self model removeClient: aClient]
		ifFalse: [self removeDependent: aClient]