protocol
asLaTeX

	^ String streamContents: [ :s | self printLaTeXOn: s ]