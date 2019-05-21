testing
testZipDo

	| second |
	second := 1 to: collection size.
	collection zip: second do: [:a :b |
		self assert: (collection at: b) equals: a]