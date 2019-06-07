tools
saveSheetAs: aName

	self
		should: [(self subject findByLabel: self saveSheetLabel) click]
		raise: ProvideAnswerNotification
		butHandleException: [:notification | notification resume: aName].