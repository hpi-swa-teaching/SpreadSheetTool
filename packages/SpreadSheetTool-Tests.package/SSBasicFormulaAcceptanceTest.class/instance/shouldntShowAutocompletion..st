tools
shouldntShowAutocompletion: aMorph

	| completions |
	completions := self findAutocompletionsOpenedWhile: [
		aMorph
			sendKeys: ' Obje';
			wait].
	self deny: completions notEmpty.