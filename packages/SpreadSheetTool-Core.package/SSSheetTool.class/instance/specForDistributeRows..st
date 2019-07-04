toolbuilder
specForDistributeRows: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Distribute rows';
		model: self;
		action: #distributeRows;
		help: 'Align all rows to an equal height';
		yourself