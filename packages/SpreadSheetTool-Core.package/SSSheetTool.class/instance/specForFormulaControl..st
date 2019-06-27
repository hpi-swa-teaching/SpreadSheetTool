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
			frame: (LayoutFrame offsets: (0 @ 0.5 corner: 0 @ 0));
			color: #windowColorToUse;
			yourself).
	^ spec