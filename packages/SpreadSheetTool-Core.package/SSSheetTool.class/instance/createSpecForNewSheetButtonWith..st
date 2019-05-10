toolbuilder
createSpecForNewSheetButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'New sheet';
		model: self;
		action: #openNewSheet;
		frame: (0 @ 0 corner: 1 @ 1);
		yourself.