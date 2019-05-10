*SpreadSheetTool-Core-dependents
containingMorphicModels
	"Answer the MorphicModels that hold the receiver."

	^ self dependents select: #isMorphicModel