toolbuilder
specForFormulaControl: aBuilder

	| spec |
	spec := aBuilder pluggablePanelSpec new
		layout: #vertical;
		children: OrderedCollection new;
		yourself.
	spec children
		add: (aBuilder pluggableCheckBoxSpec new
				model: self;
				label: #labelForAutoEvaluate;
				action: #toggleAutoEvaluate;
				state: #autoEvaluateActivated;
				frame: 0 @ 0 extent: 1 @ 1;
				yourself).
	^ spec