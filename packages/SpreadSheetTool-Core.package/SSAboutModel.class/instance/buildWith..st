toolbuilder
buildWith: aBuilder

	| windowSpec |
	windowSpec := self buildWindowWith: aBuilder specs: {
		(LayoutFrame
			fractions: (0 @ 0 corner: 1 @ 0)
			offsets: (0 @ 0 extent: 0 @ self headerHeight))
				-> [self specForHeader: aBuilder].
		(LayoutFrame
			fractions: (0 @ 0 corner: 1 @ 1)
			offsets: (0 @ self headerHeight corner: self illustrationWidth negated @ 1))
				-> [self specForInfoBox: aBuilder].
		(LayoutFrame
			fractions: (1 @ 0 corner: 1 @ 1)
			offsets: (self illustrationWidth negated @ (self headerHeight * 2) extent: 1 @ 1))
				-> [self specForIllustration: aBuilder] }.
	windowSpec minimumExtent: self minimumWindowExtent.
	^ aBuilder build: windowSpec