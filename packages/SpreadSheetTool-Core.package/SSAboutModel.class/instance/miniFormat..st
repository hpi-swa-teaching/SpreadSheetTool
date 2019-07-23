contents
miniFormat: aString

	| formattedLines textLines styler |
	textLines := aString lines collect: #asText.
	styler := SHTextStylerST80 new.
	(styler class canUnderstand: #context:) ifTrue: [
		styler context: (SSEmbeddedGetterFormula new model: []; context)].
	formattedLines := textLines collect: [:text |
		(text at: 1 ifAbsent: [nil])
			caseOf: {
				[$#] -> [text allButFirst allBold].
				[$-] -> [text
					addAttribute: (TextIndent tabs: 1);
					yourself].
				[$@] -> [text allButFirst
					addAttribute: (PluggableTextAttribute evalBlock: [self openUrl: text allButFirst]);
					yourself].
				[$`] -> [| styledText |
					styledText := text allButFirst.
					styler privateStyle: styledText.
					styledText addAttribute: (TextIndent tabs: 1).
					styledText] }
			otherwise: [text]].
	^ formattedLines reduce: [:a :b | a append: Character cr; append: b]