*SpreadSheetTool-Core-dependents
containingWindows
	"Answer the windows that holds the receiver.  The dependents technique is odious and may not be airtight, if multiple windows have the same model."

	^ self dependents select: [:d |
		d isWindowForModel: self]