*SpreadSheetTool-Tests-navigating
findByClass: aClass andCriteria: aBlock

	^self findByCriteria: [ :curMorph |
		(curMorph class = aClass)
			and: [aBlock value: curMorph]]