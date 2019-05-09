assertions
findWindowsOpenedWhile: anActionBlock in: aCollectBlock
	"We cannot use MFT here as we want to test the opening procedure itself"

	| allWindows newWindows|
	allWindows := aCollectBlock value.
	anActionBlock value.
	newWindows := aCollectBlock value
		copyWithoutAll: allWindows.
	
	"Cleanup"
	newWindows do: #abandon.
	
	^ newWindows
		