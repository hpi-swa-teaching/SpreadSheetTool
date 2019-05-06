toolbuilder
reopen: aWindow

	| aBuilder currentBounds newView |
	aBuilder := ToolBuilder findDefault.
	currentBounds := aBuilder getBoundsForWindow: aWindow.
	newView := self buildWith: aBuilder default.
	
	"Close first because MVC fiddles around with processes."
	aWindow delete.
	"---- In MVC, the lines after this will not be executed ---"
	aBuilder setBoundsForWindow: newView to: currentBounds.
	newView openInWorld.
	
	aWindow model: nil.
	newView model: self.