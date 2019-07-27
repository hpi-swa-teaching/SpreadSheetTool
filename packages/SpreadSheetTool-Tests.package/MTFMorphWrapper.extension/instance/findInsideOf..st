*SpreadSheetTool-Tests-navigating
findInsideOf: aRectangle

	^self findByCriteria: [ :curMorph |
		aRectangle containsRect: curMorph bounds]