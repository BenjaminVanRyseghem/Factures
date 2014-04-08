LaTeX
printLaTeXOn: aStream

	self printAdditionalMinutesLaTeXOn: aStream.
	self printEntriesLaTeXOn: aStream.
	self printTotalLaTeXOn: aStream