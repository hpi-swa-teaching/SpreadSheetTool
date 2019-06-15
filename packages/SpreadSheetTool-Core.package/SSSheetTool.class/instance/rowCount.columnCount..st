interaction
rowCount: aRowCount columnCount: aColumnCount

	(aRowCount * aColumnCount >= (self rowCount * self columnCount)
		and: [aRowCount * aColumnCount > self maxReasonableNumberOfCells])
			ifTrue: [(UIManager default confirm:
'You entered a quite large number of cells. Creating, let alone using a SqueakSheet
of this size would take very long time. Are you sure you want to do this?
Please remember you are using Squeak with is great in every sense -- expect of performance ...

(By the way, did you know that you can rent MS Excel for only $6.99/month?)' title: 'Performance Warning')
				ifFalse: [^ self]].
	contentModels
		rowCount: aRowCount
		columnCount: aColumnCount.
	self changed: #buildCellsPanel.