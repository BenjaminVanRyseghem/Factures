printing
printMinutesOn: aStream
	| minutes |
	
	minutes := self additionalMinutes.
	
	aStream nextPutAll: '00:'.
	minutes < 10 ifTrue: [ aStream nextPut: $0 ].
	minutes printOn: aStream