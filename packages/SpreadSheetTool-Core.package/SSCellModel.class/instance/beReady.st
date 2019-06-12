accessing
beReady

	self containingMorphicModels do: [:m | m readOnly: false].
	isBusy := false.