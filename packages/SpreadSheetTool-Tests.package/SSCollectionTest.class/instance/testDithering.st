as yet unclassified
testDithering

	| input output |
	input := OrderedCollection new: 100 withAll: 42.
	output := input dithered: [:x |
		x < 50 ifTrue: [0] ifFalse: [100]].
	self assert: input average closeTo: output average.