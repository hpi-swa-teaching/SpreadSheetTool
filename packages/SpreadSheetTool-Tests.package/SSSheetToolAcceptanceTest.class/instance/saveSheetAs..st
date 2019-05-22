tools
saveSheetAs: aName

	self
		should: [(self subject findByLabel: 'Save sheet') click]
		raise: ProvideAnswerNotification
		butHandleException: [:notification | notification resume: aName].