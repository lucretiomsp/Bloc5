"
""An arc is a section of an ellipse defined by a center position, diameter,
start angle, stop angle, and an optional fillMode (OPEN, CHORD, PIE).""

## Example
```language=Pharo
| space myArc |
space := B5Space new.
myArc := B5Arc new
    diameter: 200;
    background: Color blue;
    startAngle: 0;
    stopAngle: 180;
    yourself.
space root addChild: myArc.
space show.
```


"
Class {
	#name : 'B5Arc',
	#superclass : 'B5Shape',
	#instVars : [
		'startAngle',
		'stopAngle',
		'fillMode',
		'diameter'
	],
	#category : 'Bloc5-Shapes',
	#package : 'Bloc5',
	#tag : 'Shapes'
}

{ #category : 'geometry' }
B5Arc >> buildGeometry [
    ^ BlAnnulusSectorGeometry new
        innerRadius: 0;
        outerRadius: diameter / 2;
        startAngle: startAngle;
        endAngle: stopAngle;
        yourself
 
]

{ #category : 'accessing' }
B5Arc >> diameter [ 
 ^ diameter
]

{ #category : 'accessing' }
B5Arc >> diameter: aNumber [
    diameter := aNumber.
    self
        extent: diameter @ diameter;
        geometry: self buildGeometry
]

{ #category : 'accessing' }
B5Arc >> fillMode [ 

^ fillMode 
]

{ #category : 'accessing' }
B5Arc >> fillMode: aSymbol [
    "aSymbol: #open | #chord | #pie"
    fillMode := aSymbol.
    self geometry: self buildGeometry
]

{ #category : 'initialization' }
B5Arc >> initialize [

	super initialize.
	startAngle := 0.
	stopAngle := Float pi.
	fillMode := #pie.
	diameter := 200.
	self
		extent: diameter @ diameter;
		background: Color black;
		geometry: self buildGeometry;
		position: B5Space centerCoordinates
]

{ #category : 'accessing' }
B5Arc >> startAngle [ 

^ startAngle
]

{ #category : 'accessing' }
B5Arc >> startAngle: anAngle [
    startAngle := anAngle.
    self geometry: self buildGeometry
 
]

{ #category : 'accessing' }
B5Arc >> stopAngle [ 
^ stopAngle 
]

{ #category : 'accessing' }
B5Arc >> stopAngle: anAngle [
    stopAngle := anAngle.
    self geometry: self buildGeometry
]
