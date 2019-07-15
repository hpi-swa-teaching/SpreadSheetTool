as yet unclassified
testDithering

	| input output |
	input := OrderedCollection new: 100 withAll: 0.42.
	output := input dithered: #rounded.
	self assert: input average closeTo: output average.