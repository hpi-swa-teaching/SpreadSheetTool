testing data
random

	^ random ifNil: [random := Random seed: 42]