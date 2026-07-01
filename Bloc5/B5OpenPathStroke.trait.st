"
""A trait providing per-object stroke-cap style for open-path shapes
(B5Line, B5Spline, open-mode B5Arc). Composing classes must implement
refreshGeometry, strokeColor, and strokeWeight.

Cap maps to Bloc's border builder: #round -> capRound, #square -> capButt,
#project -> capSquare. Default is #square (p5.js defaults to ROUND —
deliberate deviation).

Note: Bloc silently ignores cap style unless outskirts: is set, so
buildOpenPathBorder sets outskirts: BlOutskirts centered.""
"
Trait {
	#name : 'B5OpenPathStroke',
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

	^ self capStyle 
]

{ #category : 'API - painting settings' }
B5OpenPathStroke >> strokeCap: aSymbol [
	"#round, #square, #project"

	self capStyle: aSymbol.
	self refreshGeometry
]
