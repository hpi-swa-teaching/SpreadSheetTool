accessing
uiManager

	^ uiManager ifNil: [uiManager := UIManager default]