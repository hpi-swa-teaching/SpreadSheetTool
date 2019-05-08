*SpreadSheetTool-Tests-private-event-generation
generateMouseEvent: aSymbol button: aMouseButton position: aPosition
	
	^self generateMouseEvent: aSymbol
		button: aMouseButton
		modifiers: MTFMorphWrapper emptyEventModifier
		position: aPosition