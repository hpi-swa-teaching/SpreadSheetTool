as yet unclassified
buildWith: aBuilder

	| windowSpec |
	windowSpec := self buildWindowWith: aBuilder.
	windowSpec children
		add: ((self specForHeader: aBuilder)
			frame: 0 @ 0 extent: 1 @ (1 / 4);
			yourself);
		add: ((self specForInfoBox: aBuilder)
			frame: 0 @ (1 / 4) extent: 3 @ 3 / 4;
			yourself);
		add: ((self specForIllustration: aBuilder)
			frame: 3 @ 1 / 4 extent: 1 @ 3 / 4;
			yourself).
	^ aBuilder build: windowSpec