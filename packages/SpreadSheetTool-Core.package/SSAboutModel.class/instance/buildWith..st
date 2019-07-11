toolbuilder
buildWith: aBuilder

	| windowSpec |
	windowSpec := self buildWindowWith: aBuilder specs: {
		(0 @ 0 extent: 1 @ (1 / 5)) -> [self specForHeader: aBuilder].
		(LayoutFrame
			fractions: (0 @ (1 / 5) corner: 1 @ 1)
			offsets: (0 @ 0 extent: self illustrationWidth negated @ 1))
				-> [self specForInfoBox: aBuilder].
		(LayoutFrame
			fractions: (5 @ 0 / 5 corner: 1 @ 1)
			offsets: (self illustrationWidth negated @ 42 extent:  1 @ 1))
				-> [self specForIllustration: aBuilder] }.
	windowSpec minimumExtent: self minimumWindowExtent.
	^ aBuilder build: windowSpec