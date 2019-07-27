*SpreadSheetTool-Tests-navigating
findByPosition: aPosition andCriteria: aBlock

	^self findByCriteria: [ :curMorph |
		(self covers: curMorph position: aPosition)
			and: [aBlock value: curMorph]]