rendering
renderOn: html
	| iconSelector |
	iconSelector := self iconsTable at: self instruction class.
	html tbsGlyphIcon perform: iconSelector