*SpreadSheetTool-Tests-dependents
containingWindows
	"Answer the windows that hold the receiver."

	^ self dependents select: [:d | d isWindowForModel: self]