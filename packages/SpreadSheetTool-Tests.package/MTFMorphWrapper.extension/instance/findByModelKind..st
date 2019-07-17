*SpreadSheetTool-Tests-navigating
findByModelKind: aKind

	^self findByCriteria: [ :morph |
		morph model isKindOf: aKind]