toolbuilder
createSpecWith: aBuilder

	self model ifNil: [self
		initializeModel: SSCellModel
		builderSelector: self defaultBuilderSelector].
	^ aBuilder pluggablePanelSpec new
		children: {
			aBuilder pluggablePanelSpec new
				model: self;
				children: #morphs;
				frame: (LayoutFrame
					fractions: (0 @ 0 extent: 1 @ 1)
					offsets: (3 @ 3 corner: -3 @ -3));
				yourself.
			aBuilder pluggableButtonSpec new
				label: 'Model';
				help: 'Define a different behavior for this cell';
				model: self;
				action: #changeModel;
				frame: (LayoutFrame
					fractions: (1 @ 1 corner: 1 @ 1)
					offsets: (self buttonExtent negated corner: 0 @ 0));
				yourself
		};
		frame: 0 @ 0 extent: 1 @ 1;
		spacing: 0;
		yourself