toolbuilder
specForDistributeRows: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Distribute rows';
		model: self;
		action: #distributeRows;
		yourself