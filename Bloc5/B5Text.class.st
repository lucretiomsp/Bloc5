"
B5Text >> comment
	""p5-style text shape. Wraps Bloc's roped-text/BlTextElement behind text(str, x, y).
	 fill: sets glyph foreground (not background, unlike geometry shapes).
	 Position is top-left (Bloc origin), not p5 baseline. maxWidth/maxHeight wrapping deferred.""
"
Class {
	#name : 'B5Text',
	#superclass : 'BlTextElement',
	#traits : 'B5EventHandler',
	#classTraits : 'B5EventHandler classTrait',
	#instVars : [
		'fontSize',
		'fontName',
		'textElement',
		'fillColor',
		'string',
		'textString',
		'textColor'
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

self background: aColor
]

{ #category : 'accessing' }
B5Text >> fontName [ 
^ fontName
]

{ #category : 'accessing' }
B5Text >> fontName: aFontName [

	fontName := aFontName.
	self string: (textString asRopedText
			 foreground: textColor;
			 fontSize: self fontSize;
			 fontName: aFontName)
]

{ #category : 'accessing' }
B5Text >> fontSize [ 

^ fontSize 
]

{ #category : 'accessing' }
B5Text >> fontSize: anInteger [

	fontSize := anInteger.

	self string: ( textString asRopedText
		        foreground: Color orange;
		        fontSize: anInteger;
		        fontName:fontName )
]

{ #category : 'initialization' }
B5Text >> initialize [

	super initialize.
	string := ''.
	fillColor := Color black.
	fontSize := 16.
	fontName := 'Helvetica'.
	textString := 'Welcome to BLOC5'.
	textColor  := Color orange.
	text := textString asRopedText
		        foreground: Color orange;
		        fontSize: 16;
		        fontName: 'Helvetica'.
	self string: text
]

{ #category : 'bordering' }
B5Text >> stroke: aColor [

	textColor := aColor.
	
self string: (textString asRopedText
			 foreground: aColor;
			 fontSize: fontSize ;
			 fontName: fontName)
]

{ #category : 'accessing' }
B5Text >> text: aString [

	textString := aString.


	self string: (aString asRopedText
			 foreground: textColor;
			 fontSize: fontSize ;
			 fontName: fontName )
]
