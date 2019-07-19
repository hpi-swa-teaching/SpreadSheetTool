interaction
switchGetter

	self formulaSelection:
		(self getterIndicated
			ifTrue: [nil]
			ifFalse: [#getter]).