*SpreadSheetTool-Tests-navigating
findByBalloon: aText

	^self findByCriteria: [ :morph |
		(morph class canUnderstand: #balloonText) and: [morph balloonText = aText]]