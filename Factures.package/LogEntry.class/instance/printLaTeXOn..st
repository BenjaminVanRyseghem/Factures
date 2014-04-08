LaTeX
printLaTeXOn: aStream

	"17th February & 5:53hrs  & 235.33 \euro{}\\"

	aStream nextPutAll: (self day asDate asString allButLast: 5).
	aStream nextPutAll: ' & '.
	self printTimeOn: aStream.
	aStream nextPutAll: 'hrs & '.
	aStream nextPutAll: self computeTimeInEuros asString.
	aStream nextPutAll: '\euro{}\\'.