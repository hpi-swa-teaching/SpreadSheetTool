tools
withFixtures: aCollection do: aBlock

	| fixturesToTest |
	fixturesToTest := self class isLongStage
		ifTrue: [aCollection]
		ifFalse: [ | allFixtures |
			allFixtures := OrderedCollection newFrom: aCollection.
			1 to: (aCollection size / 10) ceiling collect: [:foo |
				allFixtures removeRandom: self random]].
	fixturesToTest do: [:fixture |
		aBlock value: fixture].