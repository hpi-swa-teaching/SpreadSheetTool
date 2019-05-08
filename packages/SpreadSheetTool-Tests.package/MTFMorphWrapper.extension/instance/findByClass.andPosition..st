*SpreadSheetTool-Tests-navigating
findByClass: aClass andPosition: aPosition

	^self findByPosition: aPosition andCriteria: [ :curMorph |
		curMorph class = aClass]