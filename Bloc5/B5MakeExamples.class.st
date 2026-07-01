"
Examples taken from the bok: 
**Make: getting started with p5.js**
by Lauren McCarthy, Casey Reas and Ben Fry
"
Class {
	#name : 'B5MakeExamples',
	#superclass : 'Object',
	#category : 'Bloc5-Examples',
	#package : 'Bloc5',
	#tag : 'Examples'
}

{ #category : 'example' }
B5MakeExamples >> strokeWeightExample [

<script: 'self new strokeWeightExample'>
| circles space |
circles := (1 to: 5) collect: [  :i  | B5Circle new diameter: 90 ; 
											fill: Color white; stroke: Color black ;strokeWeight: i * 2;
											 position: i * 90  @ 90 ].
space := B5Space  new.
space addChildren: circles.
space show.
]
