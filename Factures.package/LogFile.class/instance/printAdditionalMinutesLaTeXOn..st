LaTeX
printAdditionalMinutesLaTeXOn: aStream
	| previous |
	
	previous := LogParser parse: LogFinder previous.

	previous printAsPreviousReportLaTeXOn: aStream.
	aStream nextPutAll: String crlf.
	
	self printAsReportLaTeXOn: aStream.
	aStream nextPutAll: String crlf.
	aStream nextPutAll: '    &&\\'.
	aStream nextPutAll: String crlf.