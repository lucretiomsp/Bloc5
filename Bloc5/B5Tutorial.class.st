"
At the moment I have a set of executable examples
"
Class {
	#name : 'B5Tutorial',
	#superclass : 'Object',
	#category : 'Bloc5-Examples',
	#package : 'Bloc5',
	#tag : 'Examples'
}

{ #category : 'as yet unclassified' }
B5Tutorial class >> exampleSun [

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
B5Tutorial >> onMouseDownExample [
	"Press down on the square: it shrinks while held."

	<script: 'self new onMouseDownExample'>
	| space square |
	space := B5Space new.
	square := B5Square new
		          position: 300 @ 300;
		          extent: 100 @ 100;
		          background: Color blue.

	square onMouseDown: [ :x :y | square extent: 70 @ 70 ].

	space root addChild: square.
	space show
]

{ #category : 'example' }
B5Tutorial >> onMouseUpExample [
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
