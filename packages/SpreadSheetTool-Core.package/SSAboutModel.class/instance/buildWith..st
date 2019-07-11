toolbuilder
buildWith: aBuilder

	| windowSpec |
	windowSpec := self buildWindowWith: aBuilder.
	windowSpec minimumExtent: self minimumWindowExtent.
	windowSpec children
		add: ((self specForHeader: aBuilder)
			frame: 0 @ 0 extent: 1 @ (1 / 5);
			yourself);
		add: ((self specForInfoBox: aBuilder)
			frame: (LayoutFrame
				fractions: (0 @ (1 / 5) corner: 1 @ 1)
				offsets: (0 @ 0 extent: self illustrationWidth negated @ 1));
			yourself);
		add: ((self specForIllustration: aBuilder)
			frame: (LayoutFrame
				fractions: (5 @ 0 / 5 corner: 1 @ 1)
				offsets: (self illustrationWidth negated @ 42 extent:  1 @ 1));
			yourself).
	^ aBuilder build: windowSpec