*SpreadSheetTool-Core-exceptions
onInterruptEnsure: aBlock
	"Evaluate myself, evaluate aBlock if any error was thrown or the thread is going to be terminated"

	| success result |
	success := false.
	[result := self value.
	 success := true]
		ensure: [success ifFalse: aBlock].
	^ result