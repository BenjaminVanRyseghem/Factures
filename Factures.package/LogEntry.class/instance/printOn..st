printing
printOn: aStream
	
	super printOn: aStream.
	aStream nextPut: $(.
	self printTimeOn: aStream.
	aStream nextPutAll: ' => '.	
	day asTimeStamp printOn: aStream.
	aStream nextPut: $).