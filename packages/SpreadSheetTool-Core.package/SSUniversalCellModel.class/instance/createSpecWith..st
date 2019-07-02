as yet unclassified
createSpecWith: aBuilder

	self model ifNil: [self initializeModel: SSCellModel].
	^ aBuilder pluggablePanelSpec new
		children: {
			aBuilder pluggableButtonSpec new
				label: 'Change model';
				model: self;
				action: #changeModel;
				yourself.
			aBuilder pluggablePanelSpec new
				model: self;
				children: #morphs;
				yourself
		};
		frame: 0 @ 0 extent: 1 @ 1;
		layout: #vertical;
		yourself