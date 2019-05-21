toolbuilder
specForDistributionControl: aBuilder

	| children |
	children := {
		self specForDistributeRows: aBuilder.
		self specForDistributeColumns: aBuilder
	}.
	self setVerticalLayoutForSpecs: children.
	^ aBuilder pluggablePanelSpec new
		children: children;
		yourself.