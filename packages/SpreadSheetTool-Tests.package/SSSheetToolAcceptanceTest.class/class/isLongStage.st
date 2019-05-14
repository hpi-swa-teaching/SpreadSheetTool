staging
isLongStage

	^ isLongStage ifNil: [isLongStage :=
		Utilities authorNamePerSe isEmptyOrNil]