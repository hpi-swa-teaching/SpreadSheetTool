tools
at: aPoint putSetter: aSetter

	^ self
		at: aPoint
		putFormula: aSetter
		button: (self findSetFormulaButtonAt: aPoint)