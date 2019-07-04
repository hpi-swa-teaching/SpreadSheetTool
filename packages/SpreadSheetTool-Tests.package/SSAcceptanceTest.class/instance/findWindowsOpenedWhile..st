tools
findWindowsOpenedWhile: anActionBlock
	"We cannot use MTF here as we want to test the opening procedure itself"

	| allWindows newWindows|
	[allWindows := self findAllToolWindows.
		[anActionBlock value]
			on: ProvideAnswerNotification
			do: [:notification | (notification messageText asSymbol = #openAsTool)
				ifTrue: [notification resume: false]].
		newWindows := self findAllToolWindows
			copyWithoutAll: allWindows]
		ensure: ["Cleanup"
			newWindows ifNotNil: [newWindows do: #hide].
			windowHeap addAll: newWindows].
	
	^ newWindows