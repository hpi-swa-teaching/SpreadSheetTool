*SpreadSheetTool-Tests-interacting
assureOn: aBoolean
	"For state buttons"

	(self isOn = aBoolean) ifFalse: [self click].