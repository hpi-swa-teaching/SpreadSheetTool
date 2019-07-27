toolbuilder
specForOpenSheetButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Open sheet';
		model: self;
		action: #openSheetFromImage;
		help: 'Open a sheet stored in image';
		yourself