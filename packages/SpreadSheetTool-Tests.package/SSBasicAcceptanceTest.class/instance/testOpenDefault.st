testing
testOpenDefault
	"acceptance test for #1 (I can open a Table Morph)"
	
	self assertToolWindowOpensWhile: [self toolUnderTest openDefault].