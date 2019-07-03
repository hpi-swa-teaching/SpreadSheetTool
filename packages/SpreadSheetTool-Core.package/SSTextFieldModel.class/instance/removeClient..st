dependencies
removeClient: aCell

	self basicRemoveClient: aCell.
	self flag: #wip "STEHENGEBLIEBEN: Vielleicht besser CellModels als Clients hinzufügen,
	dann können wir bei allen Empfängern hier erstmal dependency adden. Bei CellModel
	überschreiben und dann nur basicAdd... machen."