"
Sets the style for rendering the ends of lines.
"
Trait {
	#name : 'B5OpenPathStroke',
	#instVars : [
		'capStyle'
	],
	#category : 'Bloc5-Traits',
	#package : 'Bloc5',
	#tag : 'Traits'
}

{ #category : 'API - painting settings' }
B5OpenPathStroke >> blCapSelector [
    ^ self capStyle caseOf: {
        [ #round ]   -> [ #capRound ].
        [ #square ]  -> [ #capButt ].
        [ #project ] -> [ #capSquare ] }

]

{ #category : 'API - painting settings' }
B5OpenPathStroke >> buildOpenPathBorder [

	 self border: (BlBorder builder
        paint: self strokeColor;
        width: self strokeWeight;
        perform: self blCapSelector;
        build).
    self outskirts: BlOutskirts centered.
]

{ #category : 'API - painting settings' }
B5OpenPathStroke >> capStyle [
    ^ capStyle ifNil: [ #square ]
]

{ #category : 'API - painting settings' }
B5OpenPathStroke >> strokeCap: aSymbol [
    "#round, #square, #project"
    capStyle := aSymbol.
    self refreshGeometry.

]
