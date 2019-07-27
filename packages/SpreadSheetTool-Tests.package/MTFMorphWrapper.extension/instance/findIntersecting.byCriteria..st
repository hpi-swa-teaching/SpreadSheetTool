*SpreadSheetTool-Tests-navigating
findIntersecting: aRectangle byCriteria: aCriteriaBlock

	^self findByCriteria: [ :curMorph |
		(curMorph bounds intersects: aRectangle)
			and: [aCriteriaBlock value: curMorph]]