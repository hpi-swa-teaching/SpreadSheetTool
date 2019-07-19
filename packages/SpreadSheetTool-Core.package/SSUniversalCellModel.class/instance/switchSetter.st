interaction
switchSetter

	self formulaSelection:
		(self setterIndicated
			ifTrue: [nil]
			ifFalse: [#setter]).