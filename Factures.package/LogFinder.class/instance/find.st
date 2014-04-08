protocol
find
	| month path fileName |
	
	month := self findMonth.
	path := self findPath.
	fileName := month, '.txt'.
	
	^ (path, '/', fileName) asFileReference