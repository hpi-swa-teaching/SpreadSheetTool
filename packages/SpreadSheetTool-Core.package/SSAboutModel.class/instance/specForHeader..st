as yet unclassified
specForHeader: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #applicationName;
		readOnly: true;
		frame: 0 @ 0 extent: 1 @ 1;
		yourself