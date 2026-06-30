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
		'string',
		'fontSize',
		'fontName',
		'textElement',
		'fillColor'
	],
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'instance creation' }
B5Text class >> text: aString at: aPoint [
	^ self new
		text: aString;
		position: aPoint;
		yourself
]

{ #category : 'private' }
B5Text >> buildGeometry [
	"Text has no Bloc geometry — it renders via the child BlTextElement."
	^ self
]

{ #category : 'accessing' }
B5Text >> fill: aColor [
	"p5: fill() sets text colour → glyph foreground (not background:)."
	fillColor := aColor.
	self updateText
]

{ #category : 'initialization' }
B5Text >> initialize [
	super initialize.
	string := ''.
	fillColor := Color black.
	fontSize := 12.
	fontName := nil.
	self updateText
]

{ #category : 'accessing' }
B5Text >> text: aString [
	string := aString.
	self updateText

]

{ #category : 'accessing' }
B5Text >> textFont: aFontName [
	fontName := aFontName.
	self updateText
]

{ #category : 'accessing' }
B5Text >> textSize: aNumber [
	fontSize := aNumber.
	self updateText


]

{ #category : 'private' }
B5Text >> updateText [
	"Rebuild + restyle rope (Bloc drops attributes on text change), push to self. Self-measures."
	| rope |
	rope := string asRopedText.
	rope
		foreground: fillColor;
		fontSize: fontSize.
	fontName ifNotNil: [ rope fontName: fontName ].
	self text: rope
]
