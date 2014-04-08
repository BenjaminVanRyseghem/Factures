LaTeX
printTotalLaTeXOn: aStream
	aStream
		nextPutAll:'    \hline';
		nextPutAll: String crlf;
		nextPutAll:'    \hline';
		nextPutAll: String crlf;
		nextPutAll: '    '.
	aStream nextPutAll: Date today asMonth previous asString.
	aStream nextPutAll: ' & '.
	self printTimeOn: aStream.
	aStream nextPutAll: ' & '.
	aStream nextPutAll: self computeTimeInEuros.
	aStream nextPutAll: '\euro{} \\ '