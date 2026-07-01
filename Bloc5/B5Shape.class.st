"
Super class for all high level classe with shapes a la p5js.
## Transformation API (p5.js-style)
---------------------------------
Per-shape transforms, composed in the order messages are sent
(not a fixed TRS order). Stored as an OrderedCollection of blocks
in `transformations`, replayed each call via updateTransform.

  translate: aPoint     - shift by aPoint
  rotate: degrees       - rotate (degrees, not radians; p5 deviation)
  scale: aNumberOrPoint - scale uniformly or per-axis
  resetMatrix           - clear all transforms back to identity

Origin is top-left, matching p5's coordinate system.
Children transform with their parent automatically (Bloc scene graph).
Deferred: shearX:, shearY:, applyMatrix: (no clean Bloc builder verb yet).
"
Class {
	#name : 'B5Shape',
	#superclass : 'BlElement',
	#traits : 'B5EventHandler',
	#classTraits : 'B5EventHandler classTrait',
	#instVars : [
		'mode',
		'transformations',
		'stroke',
		'strokeWeight'
	],
	#classVars : [
		'ModesDictionary'
	],
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'class initialization' }
B5Shape class >> initialize [ 


self setModes
]

{ #category : 'class initialization' }
B5Shape class >> setModes [

	ModesDictionary := Dictionary new.
	ModesDictionary at: #center put: B5ModeCenter.
	ModesDictionary at: #corner put: B5ModeCorner
]

{ #category : 'calcul' }
B5Shape >> calculateCornerCoordinates [

	^ self mode calculateCornerCoordinates
]

{ #category : 'background coloring' }
B5Shape >> fill: aColor [

"p5js synonim of background:"
	self background: aColor 
]

{ #category : 'initialization' }
B5Shape >> initialize [

	super initialize.
	self mode: #center.
	transformations := OrderedCollection new.
]

{ #category : 'accessing' }
B5Shape >> mode [

	^ mode
]

{ #category : 'accessing' }
B5Shape >> mode: aSymbol [

	mode := (self modesDictionary at: aSymbol) new child: self
]

{ #category : 'accessing' }
B5Shape >> modesDictionary [

	^ ModesDictionary
]

{ #category : 'background coloring' }
B5Shape >> noFill [ 

self background: Color transparent 
]

{ #category : 'api - bounds' }
B5Shape >> position: aPoint [

	super position:( self mode calculateCornerCoordinatesFor: aPoint)
]

{ #category : 'private' }
B5Shape >> resetMatrix [
    transformations := OrderedCollection new.
    self updateTransform

]

{ #category : 'trans' }
B5Shape >> rotate: degrees [
    transformations add: [ :t | t rotateBy: degrees ].
    self updateTransform
]

{ #category : 'trans' }
B5Shape >> scale: aNumberOrPoint [
    transformations add: [ :t | t scaleBy: aNumberOrPoint asPoint ].
    self updateTransform

]

{ #category : 'bordering' }
B5Shape >> stroke: aColor [
	"change the width of the line"

	| borderWidth |
	borderWidth := self border width.
	self border: (BlBorder paint: aColor width: borderWidth)
]

{ #category : 'bordering' }
B5Shape >> strokeWeight: anInteger [
"change the width of the line"
| color |
color := self border paint.
self border: (BlBorder paint: color width: anInteger ).
]

{ #category : 'translate' }
B5Shape >> translate: aPoint [
    transformations add: [ :t | t translateBy: aPoint ].
    self updateTransform.
]

{ #category : 'private' }
B5Shape >> updateTransform [
    self transformDo: [ :t |
        t origin: BlAffineTransformationTopLeftOrigin new.
        transformations do: [ :each | each value: t ] ]
]
