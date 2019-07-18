toolbuilder
specForModel: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #buildModel;
		frame: (LayoutFrame
			fractions: (0 @ 0 corner: 1 @ 1)
			offsets: (0 @ self buttonHeight corner: 0 @ 0));
		yourself