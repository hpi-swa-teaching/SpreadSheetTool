Tools
wantsToCloseAutocompletion
	"Only supported since https://github.com/MrModder/Autocompletion/commit/f6e8c55d23fdbef299cc1650d2cfea3b3da2b528"

	^ super wantsToCloseAutocompletion or: [self morph hasEditFocus not]