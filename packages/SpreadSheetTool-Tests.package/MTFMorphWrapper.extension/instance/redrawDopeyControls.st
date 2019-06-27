*SpreadSheetTool-Tests-interacting
redrawDopeyControls
	"This is for morphs which only change relevant state when performing #step ..."
	
	(self findByClass: UpdatingThreePhaseButtonMorph) morphs do: #step.

	
