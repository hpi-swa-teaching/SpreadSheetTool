toolbuilder
specForAutoEvaluationButton: aBuilder

	| morph spec |
	spec := aBuilder pluggableButtonSpec new
		model: self;
		label: #labelForAutoEvaluate;
		action: #toggleAutoEvaluate;
		state: #autoEvaluateActivated;
		help: 'If auto evaluate is on, all formula cells will be always up to date.
If auto evaluate is off, you will need to manually recompute the formulas.';
		yourself.
	morph := ToolBuilder build: spec.
	morph
		onColor: (morph offColor) offColor: self defaultWindowColor;
		hoverColor: (morph onColor mixed: 0.5 with: morph offColor);
		layoutFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).
	^ (self specForMorph: morph with: aBuilder)
		frame: (LayoutFrame offsets: (0 @ 0.5 corner: 0 @ 0));
		yourself