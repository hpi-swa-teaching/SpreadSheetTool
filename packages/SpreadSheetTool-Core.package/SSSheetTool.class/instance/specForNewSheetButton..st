toolbuilder
specForNewSheetButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'New sheet';
		model: self;
		action: #openNewSheet;
		help: 'Open a new tool with an empty sheet';
		yourself