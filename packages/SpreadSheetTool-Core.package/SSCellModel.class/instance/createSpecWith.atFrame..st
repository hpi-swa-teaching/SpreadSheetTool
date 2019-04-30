toolbuilder
createSpecWith: aBuilder atFrame: aFrame

	^ aBuilder pluggableTextSpec new
		model: self;
		setText: #contents:notifying:;
		getText: #contents;
		frame: aFrame;
		yourself