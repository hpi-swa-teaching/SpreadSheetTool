toolbuilder
makeToggleButton: aButtonSpec with: aBuilder

	| morph |
	morph := ToolBuilder build: aButtonSpec.
	morph
		onColor: (morph offColor) offColor: self defaultWindowColor;
		hoverColor: (morph onColor mixed: 0.5 with: morph offColor);
		layoutFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).
	^ self specForMorph: morph with: aBuilder