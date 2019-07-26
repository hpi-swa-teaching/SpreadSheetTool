toolbuilder
specForAutoEvaluationButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: #labelForAutoEvaluate;
		action: #toggleAutoEvaluate;
		state: #autoEvaluateActivated;
		help: 
'If auto evaluate is enabled, all formula cells will be kept consistent concerning each other. When any formula is changed, all dependent cells are automatically updated.\If auto evaluate is off, you will need to manually recompute dependent formulas.' withCRs;
		yourself