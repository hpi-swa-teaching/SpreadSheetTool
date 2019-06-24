*SpreadSheetTool-Tests-navigating
findByKind: aKind

	^self findByCriteria: [ :curMorph |
		curMorph isKindOf: aKind]