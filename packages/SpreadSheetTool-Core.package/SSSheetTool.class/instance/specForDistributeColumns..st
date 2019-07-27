toolbuilder
specForDistributeColumns: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Distribute columns';
		model: self;
		action: #distributeColumns;
		help: 'Align all columns to an equal width';
		yourself