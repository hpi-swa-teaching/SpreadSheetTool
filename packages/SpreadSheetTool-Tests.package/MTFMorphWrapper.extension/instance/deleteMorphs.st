*SpreadSheetTool-Tests-interacting
deleteMorphs

	self morphs do: [ :morph | [morph delete]
		on: ProvideAnswerNotification
		do: [:notification | notification resume: true]].
				
			