as yet unclassified
specForInfoBox: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #infoText;
		readOnly: true;
		yourself