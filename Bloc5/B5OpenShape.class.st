"
""Abstract superclass for open-path shapes — those with unclosed geometry
and therefore visible stroke-cap endpoints (B5Line, B5Spline, open-mode
B5Arc). Unlike closed shapes (Circle, Rect, filled Arc), fill is
meaningless here; only the stroke and its cap style matter.

Composes B5TStrokeCap for per-object cap control. Subclasses implement
refreshGeometry to build their specific geometry and call
buildOpenPathBorder.""
"
Class {
	#name : 'B5OpenShape',
	#superclass : 'B5Shape',
	#traits : 'B5EventHandler + B5OpenPathStroke',
	#classTraits : 'B5EventHandler classTrait + B5OpenPathStroke classTrait',
	#instVars : [
		'capStyle'
	],
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'accessing' }
B5OpenShape >> capStyle [ 
 ^ capStyle
]

{ #category : 'accessing' }
B5OpenShape >> capStyle: aCapStyle [

capStyle := aCapStyle 
]

{ #category : 'initialization' }
B5OpenShape >> initialize [ 

super initialize .
capStyle := #square
]
