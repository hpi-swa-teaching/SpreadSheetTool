*SpreadSheetTool-Tests-accessing
resume: aString

	self reparse: aString notifying: nil ifFail: nil.
	^ super resume: self defaultResumeValue