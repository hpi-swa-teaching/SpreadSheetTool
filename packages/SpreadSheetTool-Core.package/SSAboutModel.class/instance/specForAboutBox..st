toolbuilder
specForAboutBox: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #aboutText;
		setText: #easterEgg:;
		indicateUnacceptedChanges: false;
		yourself