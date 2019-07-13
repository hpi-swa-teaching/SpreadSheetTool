toolbuilder
specForHelpText: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #helpText;
		indicateUnacceptedChanges: false;
		yourself