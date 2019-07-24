tools-navigating
findHeadersFor: columnsOrRows in: aWindow

	^ self
		findHeadersWithMin: (columnsOrRows caseOf:
		{	[#rows] -> [#x].
			[#columns] -> [#y] })
		in: aWindow