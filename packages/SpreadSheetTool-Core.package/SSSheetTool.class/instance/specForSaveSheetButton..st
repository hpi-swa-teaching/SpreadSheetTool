toolbuilder
specForSaveSheetButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Save sheet';
		model: self;
		action: #saveSheetToImage;
		help: 'Save the sheet into image';
		yourself