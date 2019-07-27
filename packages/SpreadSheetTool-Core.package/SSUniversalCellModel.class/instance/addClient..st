dependencies
addClient: aClient
	"See class comment in SSCellFormula"

	^ (self model class canUnderstand: #addClient:)
		ifTrue: [self model addClient: aClient]
		ifFalse: [self addDependent: aClient]