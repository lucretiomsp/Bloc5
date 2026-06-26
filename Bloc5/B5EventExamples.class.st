"
At the moment I have a set of executable examples
"
Class {
	#name : 'B5EventExamples',
	#superclass : 'Object',
	#category : 'Bloc5-Examples',
	#package : 'Bloc5',
	#tag : 'Examples'
}

{ #category : 'as yet unclassified' }
B5EventExamples class >> exampleSun [

	<script: 'self exampleSun'>
	| space grass darkGreen sun |
	darkGreen := Color r: 0 g: 0.4 b: 0.
	space := B5Space new.
	space root background: Color black.
	sun := B5Circle new
		       background: Color yellow;
		       position: 150 @ 170.
	grass := B5Rect new
		         position: 0 @ 300;
		         background: darkGreen;
		         extent: space extent x @ 300.
	space addChild: sun.
	space addChild: grass.
	space show.
	space addEventHandlerOn: BlMouseDownEvent  do: [ :evt |  sun position: evt position ]
]

{ #category : 'example' }
B5EventExamples >> exampleBasic [
<flag: 'needs image in image folder'>

    | space img |
    space := B5Space new.
    img := B5Image fromFile: 'cat.png'.
    img position: 50 @ 50.
    space root addChild: img.
    space show
]

{ #category : 'example' }
B5EventExamples >> followMouse [
    <script: 'self new followMouse'>
    | space dot |
    space := B5Space new.
    dot := B5Circle new
        diameter: 40;
        background: Color red;
        yourself.
    space root addChild: dot.
    space drawAnimation: [
        dot position: space mousePosition ].
    space show
]

{ #category : 'example' }
B5EventExamples >> onKeyDownExample [
	"Click the circle to focus it, then press any key: random color."
	<script: 'self new onKeyDownExample'>
	| space circle colors |
	space := B5Space new.
	colors := { Color red. Color green. Color blue. Color orange. Color purple }.
	circle := B5Circle new
		          position: 300 @ 300;
		          diameter: 100;
		          background: Color black.
 
	circle onKeyDown: [ :key | circle background: colors atRandom ].
	circle onClick: [ :x :y | "click first to grab keyboard focus" ].
 
	space root addChild: circle.
	space show
]

{ #category : 'example' }
B5EventExamples >> onKeyUpExample [
	"Click the square to focus it. Hold and release any key: it flashes white."
	<script: 'self new onKeyUpExample'>
	| space square |
	space := B5Space new.
	square := B5Square new
		          position: 300 @ 300;
		          extent: 100 @ 100;
		          background: Color black.
 
	square onKeyUp: [ :key | square background: Color white ].
	square onClick: [ :x :y | "click first to grab keyboard focus" ].
 
	space root addChild: square.
	space show
]

{ #category : 'example' }
B5EventExamples >> onMouseDownExample [ 
"Press down on the square: it toggles between blue and red."
	<script: 'self new onMouseDownExample'>
	| space square isRed |
	space := B5Space new.
	isRed := false.
 
	square := B5Square new
		          position: 300 @ 300;
		          extent: 100 @ 100;
		          background: Color blue.
 
	square onMouseDown: [ :x :y |
		isRed := isRed not.
		square background: (isRed ifTrue: [ Color red ] ifFalse: [ Color blue ]) ].
 
	space root addChild: square.
	space show
]

{ #category : 'example' }
B5EventExamples >> onMouseEnterExample [
	"Entering the rounded rect flashes it red ."
	<script: 'self new onMouseEnterExample'>
	| space rrect |
	space := B5Space new.
	rrect := B5Rect new
		         position: 250 @ 250;
		         extent: 150 @ 100;
		         background: Color green.
 
	rrect onMouseEnter: [ :x :y | rrect background: Color red].
 
	space root addChild: rrect.
	space show
]

{ #category : 'example' }
B5EventExamples >> onMouseOverExample [
	"Hover the ellipse: it toggles between black and yellow."
	<script: 'self new onMouseOverExample'>
	| space ellipse isYellow |
	space := B5Space new.
	isYellow := false.
 
	ellipse := B5Ellipse new
		           position: 300 @ 300;
		           extent: 160 @ 90;
		           background: Color black.
 
	ellipse onMouseOver: [ :x :y |
		isYellow := isYellow not.
		ellipse background: (isYellow ifTrue: [ Color yellow ] ifFalse: [ Color black ]) ].
 
	space root addChild: ellipse.
	space show
]

{ #category : 'example' }
B5EventExamples >> onMouseUpExample [
	"Release the mouse over the triangle: it changes color."
	<script: 'self new onMouseUpExample'>
	| space triangle |
	space := B5Space new.
	triangle := B5Triangle new
		            v1: 250 @ 380;
		            v2: 350 @ 380;
		            v3: 300 @ 280;
		            background: Color purple.
 
	triangle onMouseUp: [ :x :y | triangle background: Color magenta ].
 
	space root addChild: triangle.
	space show
]

{ #category : 'example' }
B5EventExamples >> onMouseWheelExample [
	"Scroll over the circle to grow or shrink it."
	<script: 'self new onMouseWheelExample'>
	| space circle diameter |
	space := B5Space new.
	diameter := 80.
	circle := B5Circle new
		          position: 300 @ 300;
		          diameter: diameter;
		          background: Color green.
 
	circle onMouseWheel: [ :evt |
		evt isScrollUp ifTrue: [ diameter := diameter + 10 ].
		evt isScrollDown ifTrue: [ diameter := diameter - 10 ].
		circle diameter: diameter ].
 
	space root addChild: circle.
	space show
]

{ #category : 'example' }
B5EventExamples >> onRightClickExample [
	"Right click the square: it turns crimson."
	<script: 'self new onSecondaryClickExample'>
	| space square |
	space := B5Space new.
	square := B5Square new
		          position: 300 @ 300;
		          extent: 120 @ 120;
		          background: Color blue.
 
	square onRightClick: [ :x :y | square background: Color red ].
 
	space root addChild: square.
	space show
]
