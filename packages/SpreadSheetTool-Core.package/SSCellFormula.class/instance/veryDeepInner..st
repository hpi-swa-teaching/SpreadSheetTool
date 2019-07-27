copying
veryDeepInner: deepCopier

	super veryDeepInner: deepCopier.
	
	context := nil. "volatile and non-copyable"
	1 to: self class instSize do: [:index |
		self instVarAt: index put: (
			(self instVarAt: index) veryDeepCopyWith: deepCopier)].