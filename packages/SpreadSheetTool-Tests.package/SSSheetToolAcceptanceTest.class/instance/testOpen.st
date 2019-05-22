testing
testOpen
	"Test for #1 (I can open a Table Morph)"
	
	self assertWindowOpensWhile: [self toolUnderTest openDefault].