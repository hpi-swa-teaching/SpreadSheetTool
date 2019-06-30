interaction
wantsToCloseAutocompletion

	^ (self containingMorphicModels anySatisfy: [:m | m hasOwner: World]) not