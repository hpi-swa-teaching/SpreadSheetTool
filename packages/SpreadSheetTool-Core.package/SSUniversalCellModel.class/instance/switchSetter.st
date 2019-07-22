interaction
switchSetter

	self formulaSelection:
		(self isSetterIndicated
			ifTrue: [nil]
			ifFalse: [#setter]).