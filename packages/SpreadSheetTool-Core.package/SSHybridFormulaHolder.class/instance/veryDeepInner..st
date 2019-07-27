copying
veryDeepInner: deepCopier.

	super veryDeepInner: deepCopier.
	
	morph := nil. "Don't copy the morph!"
	self class instVarNames do: [:name |
		self instVarNamed: name put: (
			(self instVarNamed: name) veryDeepCopyWith: deepCopier)].