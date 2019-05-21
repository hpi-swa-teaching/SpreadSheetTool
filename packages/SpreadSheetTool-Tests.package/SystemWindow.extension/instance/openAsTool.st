*SpreadSheetTool-Tests-*ToolBuilder-Morphic-opening
openAsTool
	"Open this window as a tool, that is, honor the preferences such as #reuseWindows and #openToolsAttachedToMouseCursor."
	
	| meOrSimilarWindow |
	meOrSimilarWindow := self openInWorldExtent: self extent.
	(Project uiManager openToolsAttachedToMouseCursor
		and: [ | event |
			event := self currentEvent.
			event isMouse and: [event isMouseUp]])
				ifTrue: [
					Project uiManager
						askForProvidedAnswerTo: #openAsTool
						ifSupplied: [:answer | answer ifFalse: [^ meOrSimilarWindow]].
					meOrSimilarWindow setProperty: #initialDrop toValue: true.
					meOrSimilarWindow hasDropShadow: false.
					self currentHand attachMorph: meOrSimilarWindow].
	^ meOrSimilarWindow