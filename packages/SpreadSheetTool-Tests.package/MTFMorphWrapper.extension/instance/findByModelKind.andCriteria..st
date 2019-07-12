*SpreadSheetTool-Tests-navigating
findByModelKind: aKind andCriteria: aBlock

	^self findByCriteria: [ :morph |
		(morph model isKindOf: aKind) and: (aBlock value: morph)]