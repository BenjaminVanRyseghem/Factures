printing
printTimeOn: aStream
	| minutes hours |
	
	hours := duration hours.
	minutes := duration minutes.
	
	hours < 10 ifTrue: [ aStream nextPut: $0 ].
	hours printOn: aStream.
	aStream nextPutAll: ':'.
	minutes < 10 ifTrue: [ aStream nextPut: $0 ].
	minutes printOn: aStream.