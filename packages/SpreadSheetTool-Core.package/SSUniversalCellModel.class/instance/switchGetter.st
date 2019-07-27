interaction
switchGetter

	self formulaSelection:
		(self isGetterIndicated
			ifTrue: [nil]
			ifFalse: [#getter]).