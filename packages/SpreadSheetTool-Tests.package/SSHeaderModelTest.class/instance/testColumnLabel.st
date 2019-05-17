testing
testColumnLabel

	self theoriesForLabel do: [:aTheory | |model|
		model := SSHeaderModel
			columnHeaderForIndex: aTheory first 
			parent: nil.
		self assert: aTheory second equals: model contents]