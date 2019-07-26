examples
exampleBinaryClock
	"SSSheetTool exampleBinaryClock open"

	| tool sheet boolean |
	tool := self rowCount: 4 columnCount: 7.
	sheet := tool instVarNamed: #contentModels.
	(sheet atRow: 1 atColumn: 1) getterFormula compile: '#littleEndian' notifying: nil ifFail: [].
	(sheet atRow: 2 atColumn: 1) getterFormula compile: '^Time current seconds' notifying: nil ifFail: [].
	(sheet atRow: 3 atColumn: 1) getterFormula compile: '^Time current minutes' notifying: nil ifFail: [].
	(sheet atRow: 4 atColumn: 1) getterFormula compile: '^Time current hours' notifying: nil ifFail: [].
	boolean := (SSModelConfiguration newFor: SSBooleanModel) contentGetter: #state; contentSetter: #state:; yourself.
	1 to: 6 do: [:column |
		(sheet atRow: 1 atColumn: column + 1) getterFormula compile: '^2 << cell columnIndex / 8' notifying: nil ifFail: []].
	2 to: 4 do: [:row | 1 to: 6 do: [:column |
		(sheet atRow: row atColumn: column + 1) getterFormula
			compile: ('^((cell at: 1 @ {1}) bitAnd: (cell aboveBy: {1} - 1)) strictlyPositive'
				format: {row})
			notifying: nil ifFail: [].
		(sheet atRow: row atColumn: column + 1) installModelOfKind: SSBooleanModel with: boolean]].
	^ tool