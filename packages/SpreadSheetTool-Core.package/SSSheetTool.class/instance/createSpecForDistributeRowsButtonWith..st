toolbuilder
createSpecForDistributeRowsButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Distribute rows';
		model: self;
		action: #distributeRows;
		frame: 0 @ 0 corner: 1 @ 1;
		yourself.