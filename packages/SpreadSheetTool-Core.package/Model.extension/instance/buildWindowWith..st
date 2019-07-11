*SpreadSheetTool-Core-toolbuilder
buildWindowWith: builder
	| windowSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec model: self.
	windowSpec label: #windowTitle.
	windowSpec children: OrderedCollection new.
	^windowSpec