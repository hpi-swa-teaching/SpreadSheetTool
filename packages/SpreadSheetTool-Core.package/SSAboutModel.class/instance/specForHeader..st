toolbuilder
specForHeader: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #applicationName;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: 0 @ 0 extent: 1 @ 1;
		yourself