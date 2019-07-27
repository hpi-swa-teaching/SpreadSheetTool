toolbuilder
specForMainPanel: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #buildCellsPanel;
		yourself