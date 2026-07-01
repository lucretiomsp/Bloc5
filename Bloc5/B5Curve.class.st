"
I am B5Curve, a Bloc5 shape that draws a single smooth curve through two anchor
points, shaped by two control points — a Catmull-Rom spline segment, matching the
behaviour of p5.js `curve()`.

I take four points: two controls (cp1, cp2) that are not drawn, and two anchors
(a1, a2) that are the visible start and end of the curve. The controls act like
handles pulling the curve into shape, the way p5's `curve()` uses its first and
last points.

Catmull-Rom is a cubic, so I convert my four points exactly into cubic Bézier
control points and hand them to Bloc's `BlBezierCurveGeometry` — no sampling, no
resampling. See `bezierControlPoints` for the conversion.

I am an open path, so I render through my border, not my background. Setting a
background has no visible effect.

Public API:
  **strokeWeight:** line thickness
  **stroke:** line colour
  **strokeCap:** line ending: #round, #project, or #butt
                  (caps only render because I set outskirts to centered)

Two ways to build me:
```language=Pharo
  B5Curve p1: 20@200 p2: 80@120 p3: 160@220 p4: 220@140
  B5Curve points: { 20@200. 80@120. 160@220. 220@140 }
````
"
Class {
	#name : 'B5Curve',
	#superclass : 'B5OpenShape',
	#instVars : [
		'cp1',
		'a1',
		'a2',
		'cp2'
	],
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'as yet unclassified' }
B5Curve class >> p1: q1 p2: q2 p3: q3 p4: q4 [
    ^ self new setCp1: q1 a1: q2 a2: q3 cp2: q4
]

{ #category : 'instance creation' }
B5Curve class >> points: anArrayWith4Points [
    anArrayWith4Points size = 4 ifFalse: [ ^ self error: 'B5Curve needs exactly 4 points' ].
    ^ self new
        setCp1: (anArrayWith4Points at: 1)
        a1:     (anArrayWith4Points at: 2)
        a2:     (anArrayWith4Points at: 3)
        cp2:    (anArrayWith4Points at: 4)
]

{ #category : 'accessing' }
B5Curve >> bezierControlPoints [
    "Catmull-Rom (cp1,a1,a2,cp2) → exact cubic Bézier for visible a1→a2"
    | b1 b2 |
    b1 := a1 + ((a2 - cp1) / 6).
    b2 := a2 - ((cp2 - a1) / 6).
    ^ { a1 . b1 . b2 . a2 }
]

{ #category : 'initialization' }
B5Curve >> initialize [
    super initialize.
    cp1 := 0@0. a1 := 0@0. a2 := 0@0. cp2 := 0@0
]

{ #category : 'private' }
B5Curve >> refreshGeometry [
    | b |
stroke := Color blue.
strokeWeight  := 3.
    b := BlBorder builder.
    b paint: stroke; width: strokeWeight.
    capStyle = #round   ifTrue: [ b capRound ].
    capStyle = #project ifTrue: [ b capSquare ].
    capStyle = #butt    ifTrue: [ b capButt ].
    self geometry: (BlBezierCurveGeometry controlPoints: self bezierControlPoints).
    self border: b build
]

{ #category : 'initialization' }
B5Curve >> setCp1: q1 a1: q2 a2: q3 cp2: q4 [
    cp1 := q1. a1 := q2. a2 := q3. cp2 := q4.
    self refreshGeometry .
    ^ self
]
