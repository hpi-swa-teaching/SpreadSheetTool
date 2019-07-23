*SpreadSheetTool-Core-dependents
containingMorphicModels
	"Answer the MorphicModels that hold the receiver."

	^ self dependents select: [:dependent |
		dependent isMorphicModel and: [dependent model == self]]