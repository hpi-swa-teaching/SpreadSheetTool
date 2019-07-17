tools
into: aPoint putGetter: aGetter

	^ self
		into: aPoint
		putFormula: aGetter
		button: (self findGetFormulaButtonAt: aPoint)