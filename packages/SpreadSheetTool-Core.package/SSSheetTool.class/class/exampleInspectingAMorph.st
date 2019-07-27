examples
exampleInspectingAMorph
	"SSSheetTool exampleInspectingAMorph"

	| tool sheet booleanConfig colorConfig morph |
	morph := RectangleMorph new openInWorld.
	tool := self rowCount: 2 columnCount: 4 subject: morph.
	sheet := tool contentSheet.
	(sheet atRow: 1 atColumn: 1) in: [:cell |
		cell getterFormula compile: '^self position' notifying: nil ifFail: [].
		cell setterFormula compile: 'self position: value' notifying: nil ifFail: [].
		cell installModelOfKind: SSEvaluator].
	(sheet atRow: 1 atColumn: 2) in: [:cell |
		cell getterFormula compile: '^self extent' notifying: nil ifFail: [].
		cell setterFormula compile: 'self extent: value' notifying: nil ifFail: [].
		cell installModelOfKind: SSEvaluator].
	(sheet atRow: 1 atColumn: 3) in: [:cell |
		cell getterFormula compile: '^self bounds' notifying: nil ifFail: [].
		cell installModelOfKind: Inspector].
	booleanConfig := (SSModelConfiguration newFor: SSBooleanHolder)
		contentGetter: #state; contentSetter: #state:; yourself.
	(sheet atRow: 1 atColumn: 4) in: [:cell |
		cell getterFormula compile: '^self visible' notifying: nil ifFail: [].
		cell setterFormula compile: 'self visible: value' notifying: nil ifFail: [].
		cell installModelOfKind: SSBooleanHolder with: booleanConfig].
	colorConfig := (SSModelConfiguration newFor: SSColorPicker)
		contentGetter: #color; contentSetter: #color:; yourself.
	(sheet atRow: 2 atColumn: 1) in: [:cell |
		cell getterFormula compile: '^self color' notifying: nil ifFail: [].
		cell setterFormula compile: 'self color: value' notifying: nil ifFail: [].
		cell installModelOfKind: SSColorPicker with: colorConfig].
	(sheet atRow: 2 atColumn: 2) in: [:cell |
		cell getterFormula compile: '^self borderColor' notifying: nil ifFail: [].
		cell setterFormula compile: 'self borderColor: value' notifying: nil ifFail: [].
		cell installModelOfKind: SSColorPicker with: colorConfig].
	(sheet atRow: 2 atColumn: 3) in: [:cell |
		cell getterFormula compile: '^self borderWidth' notifying: nil ifFail: [].
		cell setterFormula compile: 'self borderWidth: value' notifying: nil ifFail: [].
		cell installModelOfKind: SSEvaluator].
	(sheet atRow: 2 atColumn: 4) in: [:cell |
		cell getterFormula compile: '^self extension' notifying: nil ifFail: [].
		cell installModelOfKind: ObjectExplorer].
	tool open extent:  969@500.
	tool distributeRows.