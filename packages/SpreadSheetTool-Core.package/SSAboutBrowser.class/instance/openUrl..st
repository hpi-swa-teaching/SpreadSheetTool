contents
openUrl: aStringOrText

	(Smalltalk hasClassNamed: #Scamper)
		ifFalse: [^ self inform:
'No supported version of Squeak was detected!

You can either download and install Scamper into
your image, or open this URL by using a regular web
browser from the great darkness outside of Squeak.'].
	Scamper new
		openAsMorph;
		jumpToUrl: aStringOrText asUrl.