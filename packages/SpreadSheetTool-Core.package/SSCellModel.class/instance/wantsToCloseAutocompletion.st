interaction
wantsToCloseAutocompletion

	self flag: #todo. "Release dependents instead of filtering them"
	^ (self containingMorphicModels anySatisfy: [:m | m hasOwner: World]) not