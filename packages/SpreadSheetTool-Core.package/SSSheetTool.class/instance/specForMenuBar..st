toolbuilder
specForMenuBar: aBuilder

	| children |
	children := {
		self specForSheetManagement: aBuilder.
		self specForDimensionControl: aBuilder.
		self specForDistributionControl: aBuilder.
		self specForFormulaControl: aBuilder }.
	^ aBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: children;
		frame: (LayoutFrame
			fractions: (0 @ 0 corner: 1 @ 0)
			offsets: (0 @ 0 corner: 0 @ self menuHeight));
		spacing: self menuBarSpacing;
		yourself