accessing
beBusy

	isBusy := true.
	self containingMorphicModels do: [:m | m readOnly: true]