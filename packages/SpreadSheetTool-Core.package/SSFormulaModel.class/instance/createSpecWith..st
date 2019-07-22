toolbuilder
createSpecWith: aBuilder

	^ aBuilder pluggableCodePaneSpec new
		model: self;
		getText: #contents;
		setText: #contents:;
		yourself