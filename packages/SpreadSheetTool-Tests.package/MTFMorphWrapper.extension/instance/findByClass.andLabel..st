*SpreadSheetTool-Tests-navigating
findByClass: aClass andLabel: aLabelFilter

	^self findByClass: aClass andCriteria: [ :curMorph |
		aLabelFilter match: curMorph label]