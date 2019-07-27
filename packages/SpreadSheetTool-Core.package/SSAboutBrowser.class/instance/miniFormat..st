toolbuilder
miniFormat: aString

	| formattedLines styledLines styler |
	styler := SHTextStylerST80 new
		ssContext: SSCellSetterFormula new context;
		yourself.
	styledLines := aString lines collect: [:line |
		| segments |
		segments := (line splitOn: '`') withIndexCollect: [:segment :index |
			| text |
			text := segment asText.
			index even ifTrue: [styler privateStyle: text].
			text].
		segments
			ifNotEmpty: [:t | t reduce: #,]
			ifEmpty: ['']].
	formattedLines := styledLines collect: [:text |
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