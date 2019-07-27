accessing
builderSelector
	"The selector for building the widget of the model"

	^ builderSelector ifNil: [#buildWith:]