as yet unclassified
createSpecWith: aBuilder atFrame: aFrame

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		editText: #value:;
		frame: aFrame;
		yourself