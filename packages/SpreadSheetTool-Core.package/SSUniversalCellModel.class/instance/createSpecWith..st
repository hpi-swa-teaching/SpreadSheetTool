toolbuilder
createSpecWith: aBuilder

	self model ifNil: [self 
		initializeModel: SSEvaluatorModel 
		builderSelector: self defaultBuilderSelector].
	^ aBuilder pluggablePanelSpec new
		children: {
			(self specForModel: aBuilder).
			(self specForButtonPanel: aBuilder) };
		frame: 0 @ 0 extent: 1 @ 1;
		spacing: 0;
		yourself