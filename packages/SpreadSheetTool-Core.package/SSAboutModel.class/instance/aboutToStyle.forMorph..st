toolbuilder
aboutToStyle: aStyler forMorph: aMorph

	(aMorph knownName = #infoText) ifFalse: [^ false].
	browser selectedMessageName ifNil: [^ false].
	^ browser aboutToStyle: aStyler