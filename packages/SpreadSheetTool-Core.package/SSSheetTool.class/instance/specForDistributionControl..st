toolbuilder
specForDistributionControl: aBuilder

	^ aBuilder pluggablePanelSpec new
		addChild: (self specForDistributeRows: aBuilder);
		addChild: (self specForDistributeColumns: aBuilder);
		layout: #vertical;
		yourself