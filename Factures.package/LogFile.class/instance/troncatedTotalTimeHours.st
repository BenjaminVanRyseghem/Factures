private
troncatedTotalTimeHours
	| total |
	
	total := self troncatedTotalTime.
	^ total days * 24 + total hours