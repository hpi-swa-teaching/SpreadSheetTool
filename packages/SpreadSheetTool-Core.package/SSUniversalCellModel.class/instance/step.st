stepping
step

	| newAspect newHash |
	newAspect := self getSubjectAspect.
	newHash := newAspect hash.
	latestHash = newAspect hash ifFalse: [
		self subjectChanged: newAspect.
		latestHash := newHash].