toolbuilder
specForInfoBox: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #infoText;
		setText: #easterEgg:;
		indicateUnacceptedChanges: false;
		yourself