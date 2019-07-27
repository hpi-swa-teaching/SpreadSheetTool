toolbuilder
specForFormulaControl: aBuilder

	^ aBuilder pluggablePanelSpec new
		addChild: (self specForAutoEvaluationButton: aBuilder);
		addChild: (self specForSteppingButton: aBuilder);
		layout: #vertical;
		yourself