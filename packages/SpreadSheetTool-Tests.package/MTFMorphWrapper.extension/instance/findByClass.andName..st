*SpreadSheetTool-Tests-navigating
findByClass: aClass andName: aName

	^self findByClass: aClass andCriteria: [ :curMorph |
		curMorph nameOfObjectRepresented = aName]