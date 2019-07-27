tools
autocompletionClasses

	autocompletionClasses ifNotNil: [^ autocompletionClasses].
	autocompletionClasses := Set new.
	#(OMenuMorph ECMenuMorph) do: [:name |
		Smalltalk at: name ifPresent: [:class | autocompletionClasses add: class]].
	^ autocompletionClasses