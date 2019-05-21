toolbuilder
specForNewSheetButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'New sheet';
		model: self;
		action: #openNewSheet;
		yourself.