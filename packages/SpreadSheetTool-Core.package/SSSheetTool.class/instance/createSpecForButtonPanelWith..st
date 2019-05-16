toolbuilder
createSpecForButtonPanelWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		children: { self createSpecForNewSheetButtonWith: aBuilder };
		yourself
	