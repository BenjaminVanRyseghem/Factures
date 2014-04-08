private
convertDayFrom: aString
	| date time string |

	string := aString allButLast.

	(string splitOn: ' at ') in: [ :array |
		date := Date readFrom: array first readStream pattern: 'dd/mm/yy'.
		time := Time readFromString: array second, ':00.00+02:00'.
		].

	^ DateAndTime 
		date: date
		time: time