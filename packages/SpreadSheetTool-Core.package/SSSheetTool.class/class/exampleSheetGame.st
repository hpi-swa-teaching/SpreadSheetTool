examples
exampleSheetGame
	"SSSheetTool exampleSheetGame"

	| tool sheet |
	tool := self rowCount: 2 columnCount: 5.
	tool buildWith: ToolBuilder default; steppingActivated: false.
	sheet := tool contentSheet.
	(('The SqueakSheet Game' splitOn: ' ') forceTo: 5 paddingWith: '') withIndexDo: [:word :index |
		(sheet columnHeaderAt: index) contents: word].
	(sheet rowHeaderAt: 1) contents: 'CHALLENGE:'.
	(sheet atRow: 1 atColumn: 1) in: [:display |
		display installModelOfKind: SSHybridFormulaHolder.
		display model contents: 'Create a cyclic reference in this sheet! You only may enter a sequence of inputs into the right next cell. Press <cmd>S to accept each input.\-->' withCRs].
	(sheet atRow: 1 atColumn: 2) in: [:display |
		display installModelOfKind: SSHybridFormulaHolder.
		display model contents: 'Type here'].
	(sheet atRow: 1 atColumn: 3) in: [:display |
		display installModelOfKind: SSEvaluator.
		display getterModel contents: 'cell left "just to get updates".\^(cell output ifEmptyOrNil: [-1])+1' withCRs].
	(sheet atRow: 1 atColumn: 4) getterModel contents: '^cell right'.
	(sheet atRow: 1 atColumn: 5) getterModel contents: '^(cell below sameAs: #POOL reverse) ifTrue: [cell notify: ''Congratulations!''; left] ifFalse: [''Good luck!'']'.
	1 to: 4 do: [:index | (sheet atRow: 2 atColumn: index) getterModel
		contents: '^(cell at: 3 @ 1) = cell columnIndex ifTrue: [cell at: 2 @ 1] ifFalse: [cell output]'].
	(sheet atRow: 2 atColumn: 5) getterModel
		contents: '^((1 to: (cell columnIndex - 1)) reverse collect: [:i | (cell leftBy: i) detect: #isUppercase ifNone: ['''']]) join'.
	^ tool open expandToFullScreen