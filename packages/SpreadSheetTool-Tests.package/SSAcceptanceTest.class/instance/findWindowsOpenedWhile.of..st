tools
findWindowsOpenedWhile: anActionBlock of: aWindowCollector
	"We cannot use MTF here as we want to test the opening procedure itself"

	| allWindows newWindows|
	[allWindows := aWindowCollector value.
		[anActionBlock value]
			on: ProvideAnswerNotification
			do: [:notification | (notification messageText asSymbol = #openAsTool)
				ifTrue: [notification resume: false]].
		newWindows := aWindowCollector value
			copyWithoutAll: allWindows]
		ensure: ["Cleanup"
			newWindows ifNotNil: [
				newWindows do: #hide.
				windowHeap addAll: newWindows]].
	
	^ self subject createWrapperFor: newWindows