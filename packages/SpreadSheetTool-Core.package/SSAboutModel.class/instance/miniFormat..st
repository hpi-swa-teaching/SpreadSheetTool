contents
miniFormat: aString

	| formattedLines textLines styler |
	textLines := aString lines collect: #asText.
	styler := SHTextStylerST80 new
		context: (SSEmbeddedGetterFormula new
			model: [];
			context);
		yourself.
	formattedLines := textLines collect: [:text |
		(text at: 1 ifAbsent: [nil])
			caseOf: {
				[$#] -> [text allButFirst allBold].
				[$-] -> [text
					addAttribute: (TextIndent tabs: 1);
					yourself].
				[$@] -> [text allButFirst
					addAttribute: (PluggableTextAttribute evalBlock:
						[(Smalltalk hasClassNamed: #Scamper)
							ifTrue: [Scamper new
								openAsMorph;
								jumpToUrl: text allButFirst asUrl]
							ifFalse: [self inform: 'Please install Scamper!']]);
					yourself].
				[$§] -> [ | styledText |
					styledText := text allButFirst.
					styler privateStyle: styledText.
					styledText] }
			otherwise: [text]].
	^ formattedLines reduce: [:a :b | a append: Character cr; append: b]