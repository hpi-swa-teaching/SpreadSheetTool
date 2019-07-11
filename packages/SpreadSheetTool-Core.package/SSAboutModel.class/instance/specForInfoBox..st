toolbuilder
specForInfoBox: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #infoText;
		readOnly: true;
		indicateUnacceptedChanges: false;
		yourself