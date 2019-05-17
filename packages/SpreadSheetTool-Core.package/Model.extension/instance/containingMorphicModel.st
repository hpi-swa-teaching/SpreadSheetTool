*SpreadSheetTool-Core-dependents
containingMorphicModel
	"Answer the MorphicModels that hold the receiver.  The dependents technique is odious and may not be airtight, if multiple morphic models have the same model."

	^ self containingMorphicModels last