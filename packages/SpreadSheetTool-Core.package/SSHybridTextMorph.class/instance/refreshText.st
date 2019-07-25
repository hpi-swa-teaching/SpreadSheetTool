display
refreshText

	| hadUnacceptedEdits |
	latestEditor := self textMorph editor.
	self flag: #workaround "bug #68, possibly caused by a design problem in Autocompletion
	(https://github.com/MrModder/Autocompletion/issues/31#issuecomment-515028011)
	We keep the latest editor in memory to assure ECMenuMorph can access it".
	
	hadUnacceptedEdits := self hasUnacceptedEdits.
	self setText: self getText.
	self hasUnacceptedEdits: hadUnacceptedEdits.