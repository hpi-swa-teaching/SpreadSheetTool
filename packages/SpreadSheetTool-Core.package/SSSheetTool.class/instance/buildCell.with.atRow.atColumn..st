toolbuilder
buildCell: aCell with: aBuilder atRow: aRow atColumn: aColumn

	| morph |
	morph := oldCellMorphs at: aCell ifPresent: [:m | m
		layoutFrame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			rightFraction: 1 offset: 0;
			topFraction: 0 offset: 0;
			bottomFraction: 1 offset: 0);
		yourself].
	morph ifNil: [
		morph := aBuilder build: (aCell
			ifNil: [aBuilder pluggablePanelSpec new]
			ifNotNil: [aCell createSpecWith: aBuilder])].
	morph layoutFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).
	cellMorphs at: aCell put: morph.
	^ morph