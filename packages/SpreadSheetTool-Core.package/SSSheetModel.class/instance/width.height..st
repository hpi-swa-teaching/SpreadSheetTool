accessing
width: aWidth height: aHeight

	"REFACTOR ME BEFORE I DIE"

	| newModel newView currentBounds |
	newModel := self class width: aWidth height: aHeight.
	newView := newModel buildWith: ToolBuilder default.
	
	1 to: aWidth do: [:column |
		1 to: aHeight do: [:row |
			newModel gridAtRow: row atColumn: column put: (self gridAtRow: row atColumn: column)]].

	currentBounds := ToolBuilder findDefault getBoundsForWindow: self containingWindow.
	
	"Close first because MVC fiddles around with processes."
	self changed: #close.
	"---- In MVC, the lines after this will not be executed ---"
	ToolBuilder findDefault setBoundsForWindow: newView to: currentBounds.
	newView openInWorld