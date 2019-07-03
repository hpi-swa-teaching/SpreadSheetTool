display
refreshText

	| hadUnacceptedEdits |
	hadUnacceptedEdits := self hasUnacceptedEdits.
	self update: getTextSelector.
	self hasUnacceptedEdits: hadUnacceptedEdits.