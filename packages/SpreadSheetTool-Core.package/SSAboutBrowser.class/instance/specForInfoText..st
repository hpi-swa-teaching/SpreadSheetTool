toolbuilder
specForInfoText: aBuilder

	^ aBuilder pluggableCodePaneSpec new
		model: self;
		name: #infoText;
		getText: #contents;
		readOnly: true;
		indicateUnacceptedChanges: false;
		yourself