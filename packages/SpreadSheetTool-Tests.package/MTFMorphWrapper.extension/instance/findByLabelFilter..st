*SpreadSheetTool-Tests-navigating
findByLabelFilter: aFilter

	^self findByCriteria: [ :morph |
		(MTFMorphWrapper doesSupportLabel: morph) and: [aFilter match: morph label]]