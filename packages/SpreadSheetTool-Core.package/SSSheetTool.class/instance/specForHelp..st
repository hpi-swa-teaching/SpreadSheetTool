toolbuilder
specForHelp: aBuilder

	| spec |
	spec := aBuilder pluggablePanelSpec new
		layout: #vertical;
		children: OrderedCollection new;
		yourself.
	spec children
		add: (self specForAboutButton: aBuilder).
	^ spec