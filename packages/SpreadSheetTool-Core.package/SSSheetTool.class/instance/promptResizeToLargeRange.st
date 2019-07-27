interaction
promptResizeToLargeRange

	^ UIManager default
		confirm:
'You entered a quite large number of cells. Creating, let alone using a SqueakSheet
of this size would take very long time. Are you sure you want to do this?
Please remember you are using Squeak with is great in every sense -- except of performance ...

(By the way, did you know that you can rent MS Excel for only $6.99/month?)'
		title: 'Performance Warning'