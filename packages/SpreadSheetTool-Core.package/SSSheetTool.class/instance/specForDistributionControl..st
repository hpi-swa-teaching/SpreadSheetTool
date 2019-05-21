toolbuilder
specForDistributionControl: aBuilder

	| children |
	children := {
		self specForDistributeRows: aBuilder.
		self specForDistributeColumns: aBuilder
	}.
	^ aBuilder pluggablePanelSpec new
		children: children;
		layout: #vertical;
		yourself.