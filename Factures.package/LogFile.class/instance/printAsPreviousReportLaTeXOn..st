LaTeX
printAsPreviousReportLaTeXOn: aStream

	aStream nextPutAll: '    '.
	aStream nextPutAll: Date today asMonth previous previous asString.
	aStream nextPutAll: ' & '.
	self printMinutesOn: aStream.
	aStream nextPutAll: ' & '.
	aStream nextPutAll: self computeAdditionalTimeInEuros.
	aStream nextPutAll: '\euro{} \\ '