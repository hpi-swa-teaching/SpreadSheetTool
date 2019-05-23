toolbuilder
specForDistributeColumns: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Distribute columns';
		model: self;
		action: #distributeColumns;
		yourself