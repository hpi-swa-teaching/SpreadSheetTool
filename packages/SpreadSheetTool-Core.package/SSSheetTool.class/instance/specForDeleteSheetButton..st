toolbuilder
specForDeleteSheetButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Delete sheet';
		model: self;
		action: #deleteSheetFromImage;
		help: 'Delete a sheet stored in image';
		yourself