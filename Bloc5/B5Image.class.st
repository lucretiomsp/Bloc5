"
I am B5Image, a Bloc5 shape that draws a bitmap image to the canvas.
I mirror the p5.js `image()` function.

Unlike my geometry-driven siblings, I have no Bl*Geometry. My source is a
Pharo Form, which I paint as the element's background. I override the
geometry hook to do this instead of constructing geometry.

## Public API
- `B5Image fromFile: aFileName` loads a Form via `Form fromFileNamed:`.
- `position:` places me (dx @ dy); I honour the inherited `mode`
  (#corner / #center), mirroring p5's imageMode().
- `extent:` scales me to a destination width/height (dw, dh).
- `sourceRect:` selects a subsection of the source (sx, sy, sw, sh); nil
  draws the full image.

## Instance Variables
- form:       <Form> the source image to draw.
- sourceRect: <Rectangle | nil> subsection of the source to draw.

## Implementation Notes
- `updateGeometry` must guard against a nil form: initialize may run the
  geometry hook before form is assigned (cascade ordering).
- p5 `fit` (CONTAIN/COVER) and xAlign/yAlign are deliberately deferred.

## Example
    | space img |
    space := B5Space new.
    img := B5Image fromFile: 'cat.png'.
    img position: 50 @ 50.
    space root addChild: img.
    space show
"
Class {
	#name : 'B5Image',
	#superclass : 'B5Shape',
	#instVars : [
		'filePath',
		'sourceRect',
		'sourceForm'
	],
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'instance creation' }
B5Image class >> fromFilePath: aFileName [
    ^ self new fromFilePath: (Form fromFileNamed: aFileName)
]

{ #category : 'accessing' }
B5Image >> filePath [ 

^ filePath 
]

{ #category : 'accessing' }
B5Image >> fromFilePath: aPath [

	filePath := aPath.
	sourceForm := Form fromFileNamed: filePath.
	self refreshGeometry
]

{ #category : 'change reporting' }
B5Image >> refreshGeometry [
	| f |
	sourceForm ifNil: [ ^ self ].
	f := sourceRect ifNil: [ sourceForm ] ifNotNil: [ sourceForm copy: sourceRect ].
	(self extent isNil or: [ self extent = (0 @ 0) ])
		ifTrue: [ self extent: f extent ]
		ifFalse: [ f := f scaledToSize: self extent ].
	self background: f
]

{ #category : 'accessing' }
B5Image >> sourceRect [ 
^ sourceRect 
]

{ #category : 'accessing' }
B5Image >> sourceRect: aRectangle [
    sourceRect := aRectangle.
    self refreshGeometry
]
