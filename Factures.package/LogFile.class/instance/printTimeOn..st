printing
printTimeOn: aStream
	| hours |
	
	hours := self troncatedTotalTimeHours.
	
	hours < 10 ifTrue: [ aStream nextPut: $0 ].
	hours printOn: aStream.
	aStream nextPutAll: ':00'.