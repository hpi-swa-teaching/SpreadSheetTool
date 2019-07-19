toolbuilder
specForAboutBox: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #aboutText;
		setText: #easterEgg:;
		askBeforeDiscardingEdits: false;
		yourself