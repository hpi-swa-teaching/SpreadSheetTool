staging
isLongStage

	^ isLongStage ifNil: [isLongStage :=
		SmalltalkImage current platformName ~= 'Win32']