*SpreadSheetTool-Core-toolbuilder
buildWindowWith: builder specs: specs
	| windowSpec |
	windowSpec := self buildWindowWith: builder.
	specs do:[:assoc|
		| rect action widgetSpec |
		rect := assoc key.
		action := assoc value.
		widgetSpec := action value.
		widgetSpec ifNotNil:[
			widgetSpec frame: rect.
			windowSpec children add: widgetSpec]].
	^windowSpec