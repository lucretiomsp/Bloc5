Class {
	#name : 'B5ShapeExample',
	#superclass : 'Object',
	#category : 'Bloc5-Examples',
	#package : 'Bloc5',
	#tag : 'Examples'
}

{ #category : 'examples' }
B5ShapeExample class >> example1 [

	<script: 'self example1'>
	| space sq circle triangle rect |
	space := B5Space new.
	sq := B5Square new
		      fill: Color yellow;
		      extent: 80 @ 80;
		      position: 10 @ 10.
	circle := B5Circle new position: 100 @ 10.
	triangle := B5Triangle new position: 80 @ 10.
	rect := B5Rect new
		        position: 10 @ 340;
		        extent: 250 @ 50;
		        fill: Color blue.
	space
		addChild: sq;
		addChild: circle;
		addChild: triangle;
		addChild: rect.
	space show
]
