as yet unclassified
refreshText

	| hadUnacceptedEdits |
	hadUnacceptedEdits := self hasUnacceptedEdits.
	self setText: self getText.
	self hasUnacceptedEdits: hadUnacceptedEdits.