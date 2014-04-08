private
parseLine: aString
	"aString follows the pattern 5:00 (13/03/14 at 18:29)"
	| time date |

	(aString splitOn: ' (')
		in: [ :array | 
			time := self convertTimeFrom: array first.
			date := self convertDayFrom: array second ].
		
	^ LogEntry
		day: date
		duration: time