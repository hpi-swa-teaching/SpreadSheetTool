contents
tryOpenUrl: aUrl
	
	(Smalltalk hasClassNamed: #Scamper)
		ifFalse: [self inform:
'No supported version of Scamper installed, you can either install it or open this link in a regular web browser from the great darkness outside of Squeak.'].

	(Scamper new
		jumpToUrl: aUrl asUrl;
		openAsMorph) comeToFront.