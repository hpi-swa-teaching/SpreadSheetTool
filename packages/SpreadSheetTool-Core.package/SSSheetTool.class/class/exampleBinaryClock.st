examples
exampleBinaryClock
	"SSSheetTool exampleBinaryClock"

	| tool sheet boolean |
	tool := self rowCount: 2 columnCount: 7.
	sheet := tool instVarNamed: #contentModels.
	((sheet atRow: 2 atColumn: 1) getterFormula)
		compile: '^Time current seconds' notifying: nil ifFail: [].
	boolean := (SSModelConfiguration newFor: SSBooleanModel)
		contentGetter: #state; contentSetter: #state:; yourself.
	1 to: 6 do: [:i |
		((sheet atRow: 1 atColumn: i + 1) getterFormula)
			compile: '^2 << cell columnIndex / 8' notifying: nil ifFail: [].
		((sheet atRow: 2 atColumn: i + 1) getterFormula)
			compile: '^((cell at: 1 @ 2) bitAnd: cell above) strictlyPositive' notifying: nil ifFail: [].
		(sheet atRow: 2 atColumn: i + 1)
			initializeModelForClass: SSBooleanModel withConfig: boolean].
	^ tool open