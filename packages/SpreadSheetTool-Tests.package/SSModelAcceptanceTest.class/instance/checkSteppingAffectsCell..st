tools
checkSteppingAffectsCell: aCell

	| newContent oldContent |
	oldContent := aCell read.
	(Delay forSeconds: 1) wait.
	World doOneCycleNow.
	newContent := aCell read.
	^ oldContent ~= newContent