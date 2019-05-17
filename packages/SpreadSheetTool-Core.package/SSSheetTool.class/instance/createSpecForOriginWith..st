toolbuilder
createSpecForOriginWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		frame: (self calculateFrameForItemAtColumn: 0 atRow: 0)