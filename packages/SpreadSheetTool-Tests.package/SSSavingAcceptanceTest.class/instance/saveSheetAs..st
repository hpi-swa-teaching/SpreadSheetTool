tools
saveSheetAs: aName

	self
		should: [(self subject findByLabel: self saveSheetLabel) click]
		raise: ProvideAnswerNotification
		butHandle: [:notification | notification resume: aName].