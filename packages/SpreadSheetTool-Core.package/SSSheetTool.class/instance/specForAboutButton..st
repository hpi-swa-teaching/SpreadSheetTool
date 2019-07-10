toolbuilder
specForAboutButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'About ...';
		model: self;
		action: #openAboutWindow;
		yourself