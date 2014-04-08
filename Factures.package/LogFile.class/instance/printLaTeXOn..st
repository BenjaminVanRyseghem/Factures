LaTeX
printLaTeXOn: aStream
	| map |
	
	map := Dictionary new.

	self entries do: [ :e |
		map 
			at: e day day
			ifPresent: [ :p | p duration: (p duration + e duration )]
			ifAbsent: [ map at: e day day put: (LogEntry from: e) ] ].

	map keys sorted do: [ :k | 
		(map at: k) printLaTeXOn: aStream.
		aStream nextPutAll: String crlf,'    ' ].
	
	aStream nextPutAll: '\hline
    \hline
    '.

	aStream nextPutAll: Date today asMonth previous asString.
	aStream nextPutAll: ' & '.
	self printTimeOn: aStream.
	aStream nextPutAll: ' & '.
	aStream nextPutAll: self computeTimeInEuros.
	aStream nextPutAll: '\euro{} \\ '
	