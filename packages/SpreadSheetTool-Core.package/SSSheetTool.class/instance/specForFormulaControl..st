toolbuilder
specForFormulaControl: aBuilder

	^ aBuilder pluggablePanelSpec new
		layout: #vertical;
		addChild: (self specForAutoEvaluationButton: aBuilder);
		addChild: (self specForSteppingButton: aBuilder);
		yourself