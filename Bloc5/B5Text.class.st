"
B5Text >> comment
	""p5-style text shape. Wraps Bloc's roped-text/BlTextElement behind text(str, x, y).
	 fill: sets glyph foreground (not background, unlike geometry shapes).
	 Position is top-left (Bloc origin), not p5 baseline. maxWidth/maxHeight wrapping deferred.""
"
Class {
	#name : 'B5Text',
	#superclass : 'BlTextElement',
	#instVars : [
		'fontSize',
		'fontName',
		'textElement',
		'fillColor',
		'string',
		'textString'
	],
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'instance creation' }
B5Text class >> string: aString at: aPoint [
	^ self new
		string: aString;
		position: aPoint;
		yourself
]

{ #category : 'accessing' }
B5Text >> fill: aColor [
	"p5: fill() sets text colour → glyph foreground (not background:)."
	fillColor := aColor.
	self updateText
]

{ #category : 'accessing' }
B5Text >> fontName [ 
^ fontName
]

{ #category : 'accessing' }
B5Text >> fontName: aFontName [

	fontName := aFontName.
	text := textString asRopedText
		        foreground: Color orange;
		        fontSize: self fontSize;
		        fontName: aFontName .
		self string: text
]

{ #category : 'accessing' }
B5Text >> fontSize [ 

^ fontSize 
]

{ #category : 'accessing' }
B5Text >> fontSize: aNumber [
	fontSize := aNumber.
	self updateText


]

{ #category : 'initialization' }
B5Text >> initialize [

	super initialize.
	string := ''.
	fillColor := Color black.
	fontSize := 16.
	fontName := 'Helvetica'.
	textString  := 'Welcome to BLOC5'.
	text := textString  asRopedText 
		        foreground: Color orange;
		        fontSize: 16;
		        fontName: 'Helvetica'.
	self string: text
]

{ #category : 'accessing' }
B5Text >> text: aString [
	text := aString asRopedText
		        foreground: Color orange;
		        fontSize: self fontSize;
		        fontName: self fontName.


	self string: (aString asRopedText
			 foreground: Color orange;
			 fontSize: 16;
			 fontName: 'Helvetica')
]
