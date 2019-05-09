toolbuilder
reopen: aWindow

	| aBuilder currentBounds newView currentOwner |
	aBuilder := ToolBuilder findDefault.
	currentOwner := aWindow owner.
	currentBounds := aBuilder getBoundsForWindow: aWindow.
	newView := self buildWith: aBuilder default.
	
	"Close first because MVC fiddles around with processes."
	aWindow delete.
	"---- In MVC, the lines after this will not be executed ---"
	aBuilder setBoundsForWindow: newView to: currentBounds.
	currentOwner ifNotNil: [
		currentOwner isWorldMorph
			ifTrue: [newView openInWorld: currentOwner]
			ifFalse: [currentOwner addMorph: newView]].
	
	aWindow model: nil.
	newView model: self.