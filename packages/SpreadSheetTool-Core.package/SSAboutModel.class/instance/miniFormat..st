contents
miniFormat: aString

	| formattedLines textLines styler |
	textLines := aString lines collect: #asText.
	styler := SHTextStylerST80 new
		context: (SSEmbeddedGetterFormula new model: []; context);
		yourself.
	formattedLines := textLines collect: [:text |
		(text at: 1 ifAbsent: [nil])
			caseOf: {
				[$#] -> [text allButFirst allBold].
				[$-] -> [text
					addAttribute: (TextIndent tabs: 1);
					yourself].
				[$@] -> [text allButFirst
					addAttribute: (PluggableTextAttribute evalBlock: [self tryOpenUrl: text allButFirst])
					yourself].
				[$§] -> [| styledText |
					styledText := text allButFirst.
					styler privateStyle: styledText.
					styledText addAttribute: (TextIndent tabs: 1).
					styledText] }
			otherwise: [text]].
	^ formattedLines reduce: [:a :b | a append: Character cr; append: b]