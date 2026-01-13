Class {
	#name : 'B5Triangle',
	#superclass : 'B5Shape',
	#instVars : [
		'v1',
		'v2',
		'v3'
	],
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'drawing' }
B5Triangle >> aeDrawOn: aeCanvas [
	"draw clock tick on frame"

	| center |

	super aeDrawOn: aeCanvas.
	aeCanvas setOutskirtsCentered.
	center := 200 @ 200.
	aeCanvas pathFactory: [ :cairoContext |
			cairoContext
				moveTo: v1;
				lineTo: v2;
				lineTo: v3;
				closePath ].
	aeCanvas setBorderBlock: [
			aeCanvas
				setSourceColor: Color black;
				setBorderWidth: 8 ].

	aeCanvas drawFigure
]

{ #category : 'drawing' }
B5Triangle >> aeFullDrawOn: aeCanvas [
	

	| center |
	super aeFullDrawOn: aeCanvas.

	center := 200 @ 200.
	aeCanvas pathFactory: [ :cairoContext |
			cairoContext
				moveTo: v1;
				lineTo: v2;
				lineTo: v3;
				closePath ].
	aeCanvas setBorderBlock: [
			aeCanvas
				setSourceColor: Color black;
				setBorderWidth: 8 ].

	aeCanvas drawFigure
]

{ #category : 'initialization' }
B5Triangle >> initialize [ 

super initialize .
v1 := 100@100.
v2 := 200@100.
v3 := 150@200.
]

{ #category : 'accessing' }
B5Triangle >> v1 [ 
^ v1
]

{ #category : 'accessing' }
B5Triangle >> v1: aVertex [

	v1 := aVertex 
]

{ #category : 'accessing' }
B5Triangle >> v2 [

	^ v2
]

{ #category : 'accessing' }
B5Triangle >> v2: aVertex [

	v2 := aVertex 
]

{ #category : 'accessing' }
B5Triangle >> v3 [

	^ v3
]

{ #category : 'accessing' }
B5Triangle >> v3: aVertex [

	v3 := aVertex 
]
