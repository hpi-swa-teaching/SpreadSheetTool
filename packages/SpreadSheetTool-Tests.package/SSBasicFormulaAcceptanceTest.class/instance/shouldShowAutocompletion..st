tools
shouldShowAutocompletion: aMorph

	| completions |
	completions := self findAutocompletionsOpenedWhile: [
		aMorph
			sendKeys: ' Obje';
			wait].
	self assert: completions hasSingle.