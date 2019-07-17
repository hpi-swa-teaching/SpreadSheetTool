*SpreadSheetTool-Tests-interacting
assureOn: aBoolean
	"For state buttons"

	(self getModelState = aBoolean) ifFalse: [self click].