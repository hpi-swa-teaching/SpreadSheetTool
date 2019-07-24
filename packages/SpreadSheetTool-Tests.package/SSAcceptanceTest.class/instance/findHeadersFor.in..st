tools-navigating
findHeadersFor: columnsOrRows in: aWindow

	^ self
		findHeadersWithMin: (columnsOrRows caseOf: 
			{ [#columns] -> [#y]. [#rows] -> [#x] })
		in: aWindow