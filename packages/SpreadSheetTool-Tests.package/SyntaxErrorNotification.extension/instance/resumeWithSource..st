*SpreadSheetTool-Tests-accessing
resumeWithSource: aString

	self
		reparse: aString notifying: nil ifFail: nil;
		resumeUnchecked: self defaultResumeValue