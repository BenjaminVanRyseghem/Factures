LaTeX
printEntriesLaTeXOn: aStream
	| map |
	map := Dictionary new.
	self entries
		do: [ :e | 
			map
				at: e day day
				ifPresent: [ :p | p duration: p duration + e duration ]
				ifAbsent: [ map at: e day day put: (LogEntry from: e) ] ].
	map keys sorted
		do: [ :k | 
			aStream nextPutAll: '    '.
			(map at: k) printLaTeXOn: aStream.
			aStream nextPutAll: String crlf ]