toolbuilder
specForFormulaControl: aBuilder

	| spec |
	spec := aBuilder pluggablePanelSpec new
		layout: #vertical;
		children: OrderedCollection new;
		yourself.
	spec children
		add: (aBuilder pluggableButtonSpec new
			model: self;
			label: #labelForAutoEvaluate;
			action: #toggleAutoEvaluate;
			state: #autoEvaluateActivated;
			frame: (LayoutFrame offsets: (0 @ 0.5 corner: 0 @ 0));
			yourself).
	^ spec