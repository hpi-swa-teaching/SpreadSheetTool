testing data
toolUnderTest
	"We create a copy of the tool class here in order to save and load sheets isolated from the ones the user manages."

	^ toolUnderTest ifNil: [toolUnderTest := SSSheetTool copy]