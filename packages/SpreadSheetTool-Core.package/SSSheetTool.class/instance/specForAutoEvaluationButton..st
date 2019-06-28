toolbuilder
specForAutoEvaluationButton: aBuilder

	| morph spec |
	spec := aBuilder pluggableButtonSpec new
		model: self;
		label: #labelForAutoEvaluate;
		action: #toggleAutoEvaluate;
		state: #autoEvaluateActivated;
		yourself.
	morph := ToolBuilder build: spec.
	morph
		onColor: (morph offColor) offColor: self defaultWindowColor;
		hoverColor: (morph onColor mixed: 0.5 with: morph offColor);
		layoutFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).
	^ (self specForMorph: morph with: aBuilder)
		frame: (LayoutFrame offsets: (0 @ 0.5 corner: 0 @ 0));
		yourself