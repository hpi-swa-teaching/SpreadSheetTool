testing
testZipDoOnDifferentSizes

	| second |
	second := 1 to: collection size - 1.
	self
		should: [collection
			zip: second
			do: [:a :b |]]
		raise: Exception
	