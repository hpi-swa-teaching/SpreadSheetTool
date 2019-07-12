toolbuilder
specForFormulaControl: aBuilder

	| spec |
	spec := aBuilder pluggablePanelSpec new
		layout: #vertical;
		children: OrderedCollection new;
		yourself.
	spec children
		add: (self specForAutoEvaluationButton: aBuilder);
		add: (self specForSteppingButton: aBuilder).
	^ spec