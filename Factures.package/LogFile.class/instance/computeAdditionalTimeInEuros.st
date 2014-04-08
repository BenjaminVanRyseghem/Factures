private
computeAdditionalTimeInEuros

	^ ((self additionalMinutes * 40 / 60) asFloat round: 2) printShowingDecimalPlaces: 2