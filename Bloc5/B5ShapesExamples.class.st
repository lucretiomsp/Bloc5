"
Original simple and complex shapes examples
"
Class {
	#name : 'B5ShapesExamples',
	#superclass : 'Object',
	#category : 'Bloc5-Examples',
	#package : 'Bloc5',
	#tag : 'Examples'
}

{ #category : 'example' }
B5ShapesExamples >> beeExample [

	<script: 'self new beeExample'>
	| space dark gold |
	space := B5Space new.
	space root background: (Color
			 r: 159
			 g: 212
			 b: 240
			 range: 255).
	dark := Color r: 0.17 g: 0.17 b: 0.17.
	gold := Color r: 0.96 g: 0.71 b: 0.

	"soft glow (6 translucent passes)"
	6 to: 1 by: -1 do: [ :i |
			space root addChild: (B5Ellipse new
					 extent: 150 + (i * 6) @ (120 + (i * 6));
					 fill: (Color
							  r: 1
							  g: 0.82
							  b: 0.31
							  alpha: 0.05);
					 position: 300 @ 300) ].

	"body"
	space root addChild: (B5Ellipse new
			 extent: 150 @ 118;
			 fill: gold;
			 position: 300 @ 300).

	"stripes"
	{
		(272 @ 300 -> (22 @ 96)).
		(308 @ 300 -> (24 @ 104)).
		(344 @ 300 -> (18 @ 78)) } do: [ :a |
			space root addChild: (B5Rect new
					 extent: a value;
					 fill: dark;
					 position: a key) ].

	"longer stinger (tip points right, away from body)"
	space root addChild: (B5Triangle new
			 v1: 418 @ 300;
			 v2: 373 @ 293;
			 v3: 373 @ 307;
			 fill: dark;
			 strokeWeight: 0;
			 yourself).

	"head"
	space root addChild: (B5Ellipse new
			 extent: 64 @ 70;
			 fill: dark;
			 position: 228 @ 300).

	"antennae (border set directly — B5Line's stroke:/strokeWeight: read stale ivars)"
	space root addChild: ((B5Line from: 218 @ 272 to: 198 @ 236)
			 border: (BlBorder paint: dark width: 3);
			 yourself).
	space root addChild: ((B5Line from: 232 @ 270 to: 222 @ 230)
			 border: (BlBorder paint: dark width: 3);
			 yourself).
	space root addChild: (B5Circle new
			 diameter: 9;
			 fill: dark;
			 position: 198 @ 236).
	space root addChild: (B5Circle new
			 diameter: 9;
			 fill: dark;
			 position: 222 @ 230).

	"two eyes"
	space root addChild: (B5Ellipse new
			 extent: 18 @ 22;
			 fill: Color white;
			 position: 215 @ 288).
	space root addChild: (B5Ellipse new
			 extent: 18 @ 22;
			 fill: Color white;
			 position: 241 @ 288).

	space show
]

{ #category : 'example' }
B5ShapesExamples >> curveFromArray [
    <script: 'self new curveFromArray'>
    | space pts |
    pts := { 5@60. 73@24. 73@61. 15@65 }.
    space := BlSpace new.
    space root addChild: (B5Curve points: pts).
    space show
]

{ #category : 'as yet unclassified' }
B5ShapesExamples >> exampleChuckCat [

	<script: 'self new exampleChuckCat'>
	| space img |
	space := B5Space new.
	img := B5Image new fromFilePath:
		       '/Users/domenicocipriani/MyStuff/coding/chucK/chuGL/assets/ChuckCat.png'.
	img position: 50 @ 50.
	space root addChild: img.
	space show
]

{ #category : 'example' }
B5ShapesExamples >> lineCaps [

	<script: 'self new lineCaps'>
	| top middle bottom space |
	space := B5Space new.
	top := (B5Line from: 20 @ 30 to: 200 @ 30)
		       strokeWeight: 12;
		       stroke: Color black;
		       strokeCap: #round;
		       yourself.
	middle := (B5Line from: 20 @ 70 to: 200 @ 70)
		          strokeWeight: 12;
		          stroke: Color black;
		          strokeCap: #square;
		          yourself.
	bottom := (B5Line from: 20 @ 110 to: 200 @ 110)
		          strokeWeight: 12;
		          stroke: Color black;
		          strokeCap: #project;
		          yourself.
	space
		addChild: top;
		addChild: middle;
		addChild: bottom.
		space show.
]

{ #category : 'example' }
B5ShapesExamples >> simpleCurve [

	<script: 'self new simpleCurve'>
	| space |
	space := BlSpace new.
	space root addChild: (B5Curve
			 p1: 5 @ 60
			 p2: 73 @ 24
			 p3: 73 @ 61
			 p4: 15 @ 65).
	space show
]

{ #category : 'example' }
B5ShapesExamples >> threeShapesAnimation [

<script: 'self new threeShapesAnimation'>
| space circle square triangle t |

space := B5Space new.
space frameRate: 30.

circle := B5Circle new
    position: 150 @ 300;
    diameter: 80;
    background: Color red.

square := B5Square new
    position: 400 @ 300;
    extent: 80 @ 80;
    background: Color blue.

triangle := B5Triangle new
    v1: 600 @ 260;
    v2: 680 @ 260;
    v3: 640 @ 340;
    background: Color green.

space root
    addChild: circle;
    addChild: square;
    addChild: triangle.

t := 0.

space drawAnimation: [
    t := t + 0.05.

    "circle bounces vertically"
    circle position: 150 @ (300 + (50 * t sin)).

    "square pulses in size"
    square extent: (80 + (20 * t sin)) asPoint.

    "triangle drifts right, wrapping at the edge"
    triangle
        v1: (triangle v1 + (2 @ 0));
        v2: (triangle v2 + (2 @ 0));
        v3: (triangle v3 + (2 @ 0))
].

space show.
]
