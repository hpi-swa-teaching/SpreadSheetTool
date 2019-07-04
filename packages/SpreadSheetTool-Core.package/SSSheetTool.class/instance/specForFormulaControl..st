toolbuilder
specForFormulaControl: aBuilder

	| spec |
	spec := aBuilder pluggablePanelSpec new
		layout: #vertical;
		children: OrderedCollection new;
		yourself.
	spec children
		add: (self specForAutoEvaluationButton: aBuilder).
	^ spec