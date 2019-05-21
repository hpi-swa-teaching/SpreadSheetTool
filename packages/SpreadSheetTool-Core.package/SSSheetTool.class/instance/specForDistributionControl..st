toolbuilder
specForDistributionControl: aBuilder

	| children |
	children := {
		self specForDistributeRowsButton: aBuilder.
		self specForDistributeColumnsButton: aBuilder
	}.
	self setVerticalLayoutForSpecs: children.
	^ aBuilder pluggablePanelSpec new
		children: children;
		yourself.