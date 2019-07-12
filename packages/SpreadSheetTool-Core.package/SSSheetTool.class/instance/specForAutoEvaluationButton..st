toolbuilder
specForAutoEvaluationButton: aBuilder

	| spec |
	spec := aBuilder pluggableButtonSpec new
		model: self;
		label: #labelForAutoEvaluate;
		action: #toggleAutoEvaluate;
		state: #autoEvaluateActivated;
		help: 'If auto evaluate is on, all formula cells will be always up to date.
If auto evaluate is off, you will need to manually recompute the formulas.';
		yourself.
	^ self makeToggleButton: spec with: aBuilder