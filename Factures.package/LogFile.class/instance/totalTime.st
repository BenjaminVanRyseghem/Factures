private
totalTime

	^ self entries
		inject: Duration new
		into: [ :sum :entry | sum + entry duration ]