as yet unclassified
createSpecWith: aBuilder atFrame: aFrame

	^ aBuilder pluggableTextSpec new
		model: self;
		editText: #value:;
		frame: aFrame;
		yourself