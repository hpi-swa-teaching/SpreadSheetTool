testing
testLabel

	self theoriesForLabel do: [:aTheory | |model|
		model := SSColumnHeaderModel index: aTheory first.
		self assert: aTheory second equals: model label]