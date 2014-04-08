protocol
previous
	| month path fileName |
	
	month := self findPreviousMonth.
	path := self findPreviousPath.
	fileName := month, '.txt'.
	
	^ (path, '/', fileName) asFileReference