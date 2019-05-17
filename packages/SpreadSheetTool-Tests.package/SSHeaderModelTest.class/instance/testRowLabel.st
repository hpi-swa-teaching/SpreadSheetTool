testing
testRowLabel

	self theoriesForLabel do: [:aTheory | |model|
		model := SSHeaderModel
			rowHeaderForIndex: aTheory first 
			parent: nil.
		self assert: aTheory first equals: model contents asNumber]