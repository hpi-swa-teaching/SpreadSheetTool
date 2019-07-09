toolbuilder
specForButtonPanel: aBuilder

	^ aBuilder pluggablePanelSpec new
		frame: (LayoutFrame
			fractions: (0 @ 0 corner: 1 @ 0)
			offsets: (0 @ 0 corner: 0 @ self buttonHeight));
		children: {
			self specForFormulaButton: aBuilder.
			self specForModelButton: aBuilder. };
		layout: #horizontal;
		yourself