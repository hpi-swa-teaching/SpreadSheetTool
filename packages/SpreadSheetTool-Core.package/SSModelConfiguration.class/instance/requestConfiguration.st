interaction
requestConfiguration

	| configuration |
	configuration := self copy.
	configuration constructor:
		(self requestConstructor ifNil: [^ nil]).
	configuration builderSelector:
		(self requestBuilderSelector ifNil: [^ nil]).
	configuration contentGetter:
		(self requestContentGetter ifNil: [^ nil]).
	configuration contentSetter:
		((self requestContentSetterFor: configuration)
			ifNil: [^ nil]).
	^ configuration