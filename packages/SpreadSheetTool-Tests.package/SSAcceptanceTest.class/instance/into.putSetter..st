tools
into: aPoint putSetter: aSetter

	^ self
		into: aPoint
		putFormula: aSetter
		button: (self findSetFormulaButtonAt: aPoint)