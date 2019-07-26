toolbuilder
miniFormat: aString

	| formattedLines textLines styler |
	styler := SHTextStylerST80 new
		ssContext: (SSCellSetterFormula new context);
		yourself.
	textLines := aString lines collect: [:line | ((line splitOn: '`') withIndexCollect: [:segment :index |
		| text |
		text := segment asText.
		index even ifTrue: [styler privateStyle: text].
		text]) ifNotEmpty: [:t | t reduce: #,] ifEmpty: ['']].
	formattedLines := textLines collect: [:text |
		(text at: 1 ifAbsent: [nil])
			caseOf: {
				[$#] -> [text allButFirst allBold].
				[$-] -> [text
					addAttribute: (TextIndent tabs: 1);
					yourself].
				[$@] -> [text allButFirst
					addAttribute: (PluggableTextAttribute evalBlock: [self openUrl: text allButFirst]);
					yourself] }
			otherwise: [text]].
	^ formattedLines reduce: [:a :b | a append: Character cr; append: b]