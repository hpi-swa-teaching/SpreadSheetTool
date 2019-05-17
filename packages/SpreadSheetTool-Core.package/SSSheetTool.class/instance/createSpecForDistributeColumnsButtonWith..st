toolbuilder
createSpecForDistributeColumnsButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Distribute columns';
		model: self;
		action: #distributeColumns;
		frame: 0 @ 0 corner: 1 @ 1;
		yourself.