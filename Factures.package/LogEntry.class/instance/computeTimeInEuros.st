private
computeTimeInEuros

	^ ((( self duration hours * 40) + (self duration minutes * 40 / 60) ) asFloat round: 2) printShowingDecimalPlaces: 2