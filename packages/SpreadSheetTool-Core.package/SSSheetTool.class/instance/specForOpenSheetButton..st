toolbuilder
specForOpenSheetButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Open sheet';
		model: self;
		action: #openSheetFromImage;
		yourself.