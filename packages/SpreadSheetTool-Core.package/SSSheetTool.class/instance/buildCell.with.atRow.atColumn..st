toolbuilder
buildCell: aCell with: aBuilder atRow: aRow atColumn: aColumn
	"Recycle morphs. Keeps unaccepted edits and any custom (halo-based) modifications of them ..."

	| morph |
	morph := oldCellMorphs at: aCell ifAbsent: nil.
	morph ifNil: [
		morph := aBuilder build: (aCell
			ifNil: [aBuilder pluggablePanelSpec new]
			ifNotNil: [aCell createSpecWith: aBuilder]).
		morph layoutFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1))].
	cellMorphs at: aCell put: morph.
	^ morph