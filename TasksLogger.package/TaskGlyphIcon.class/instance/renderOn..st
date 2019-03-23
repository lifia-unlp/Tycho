rendering
renderOn: html
	| iconSelector |
	iconSelector := self iconsTable at: self task componentClassname.
	html tbsGlyphIcon perform: iconSelector