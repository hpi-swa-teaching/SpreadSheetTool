toolbuilder
specForDeleteSheetButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Delete sheet';
		model: self;
		action: #deleteSheetFromImage;
		yourself