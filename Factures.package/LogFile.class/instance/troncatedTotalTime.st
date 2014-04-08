private
troncatedTotalTime

	^ self totalTime - (Duration minutes: self additionalMinutes)