assertions
findWindowsOpenedWhile: anActionBlock in: aCollectBlock
	"We cannot use MFT here as we want to test the opening procedure itself"

	| allWindows newWindows|
	[allWindows := aCollectBlock value.
		[anActionBlock value]
			on: ProvideAnswerNotification
			do: [:notification | (notification messageText asSymbol = #openAsTool)
				ifTrue: [notification resume: false]].
		newWindows := aCollectBlock value
			copyWithoutAll: allWindows]
		ensure: ["Cleanup"
			newWindows do: #hide].
	
	^ newWindows