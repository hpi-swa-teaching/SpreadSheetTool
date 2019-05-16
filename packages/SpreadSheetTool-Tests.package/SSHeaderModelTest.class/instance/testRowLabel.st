testing
testRowLabel

	self theoriesForLabel do: [:aTheory | |model|
		model := SSRowHeaderModel index: aTheory first.
		self assert: aTheory first equals: model label asNumber]