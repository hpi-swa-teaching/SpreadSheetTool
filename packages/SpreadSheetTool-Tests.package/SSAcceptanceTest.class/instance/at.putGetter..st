tools-interacting
at: aPoint putGetter: aGetter

	^ self
		at: aPoint
		putFormula: aGetter
		button: (self findGetFormulaButtonAt: aPoint)