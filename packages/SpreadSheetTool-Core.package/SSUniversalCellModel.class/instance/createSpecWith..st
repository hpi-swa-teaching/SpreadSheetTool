toolbuilder
createSpecWith: aBuilder

	self model ifNil: [self initializeModel: SSCellModel].
	^ aBuilder pluggablePanelSpec new
		children: {
			aBuilder pluggableButtonSpec new
				label: 'Change model';
				model: self;
				action: #changeModel;
				frame: (LayoutFrame
					fractions: (0 @ 0 corner: 1 @ 0)
					offsets: (0 @ 0 corner: 0 @ self buttonHeight));
				yourself.
			aBuilder pluggablePanelSpec new
				model: self;
				children: #morphs;
				frame: (LayoutFrame
					fractions: (0 @ 0 corner: 1 @ 1)
					offsets: (0 @ self buttonHeight corner: 1 @ 1));
				yourself
		};
		frame: 0 @ 0 extent: 1 @ 1;
		spacing: 0;
		yourself