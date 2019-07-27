toolbuilder
specForMenuBar: aBuilder

	^ aBuilder pluggablePanelSpec new
		layout: #horizontal;
		spacing: self menuBarSpacing;
		addChild: (self specForSheetManagement: aBuilder);
		addChild: (self specForDimensionControl: aBuilder);
		addChild: (self specForDistributionControl: aBuilder);
		addChild: (self specForFormulaControl: aBuilder);
		addChild: (self specForHelp: aBuilder);
		yourself