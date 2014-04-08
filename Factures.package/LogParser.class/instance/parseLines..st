private
parseLines: aCollection

	^ LogFile
		entries: ((aCollection allButLast: 2) collect: [ :each | self parseLine: each ])