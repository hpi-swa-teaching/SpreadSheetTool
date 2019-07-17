display
refreshText

	| hadUnacceptedEdits |
	hadUnacceptedEdits := self hasUnacceptedEdits.
	self update: self getTextSelector.
	self hasUnacceptedEdits: hadUnacceptedEdits.