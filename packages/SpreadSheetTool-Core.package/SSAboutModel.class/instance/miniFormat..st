contents
miniFormat: aString

	| formattedLines textLines |
	textLines := aString lines collect: #asText.
	formattedLines := textLines collect: [:text |
		(text at: 1 ifAbsent: [nil])
			caseOf: {
				[$#] -> [text allButFirst allBold].
				[$@] -> [text allButFirst
					addAttribute: (PluggableTextAttribute evalBlock:
						[(Smalltalk hasClassNamed: #Scamper)
							ifTrue: [Scamper new
								openAsMorph;
								jumpToUrl: text allButFirst asUrl]
							ifFalse: [self inform: 'Please install Scamper!']]);
					yourself].
				[$-] -> [text
					addAttribute: (TextIndent tabs: 1);
					yourself] }
			otherwise: [text]].
	^ formattedLines reduce: [:a :b | a append: Character cr; append: b]