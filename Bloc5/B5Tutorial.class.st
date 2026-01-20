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
