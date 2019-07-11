toolbuilder
buildWith: aBuilder

	| windowSpec |
	windowSpec := self buildWindowWith: aBuilder.
	windowSpec children
		add: ((self specForHeader: aBuilder)
			frame: 0 @ 0 extent: 1 @ (1 / 4);
			yourself);
		add: ((self specForInfoBox: aBuilder)
			frame: (LayoutFrame
				fractions: (0 @ (1 / 4) extent: 4 @ 3 / 4)
				offsets: (0 @ 0 extent: self illustrationWidth negated @ 1));
			yourself);
		add: ((self specForIllustration: aBuilder)
			frame: (LayoutFrame
				fractions: (4 @ 1 / 4 corner: 1 @ 1)
				offsets: (self illustrationWidth negated @ 0 extent:  1 @ 1));
			yourself).
	^ aBuilder build: windowSpec