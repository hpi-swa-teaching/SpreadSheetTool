staging
isLongStage

	^ isLongStage ifNil: [isLongStage :=
		Smalltalk os platformName ~= 'Win32']