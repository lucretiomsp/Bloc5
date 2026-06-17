"
An arc is a section of an ellipse defined by a center position, width, height,
start angle, stop angle, and an optional fill mode (OPEN, CHORD, PIE).
"
Class {
	#name : 'B5Arc',
	#superclass : 'B5Shape',
	#instVars : [
		'startAngle',
		'stopAngle'
	],
	#category : 'Bloc5',
	#package : 'Bloc5'
}

{ #category : 'building' }
B5Arc >> buildGeometry [

	^ BlAnnulusSectorGeometry new
		  startAngle: startAngle;
		  endAngle: stopAngle;
		  yourself
]

{ #category : 'initialization' }
B5Arc >> initialize [
    super initialize.
    startAngle := 0.
    stopAngle := Float pi.
    mode := #pie.
    self
        geometry: self buildGeometry;
        background: Color black;
        extent: 200 @ 200
]

{ #category : 'accessing' }
B5Arc >> mode: aSymbol [
    "aSymbol: #open | #chord | #pie"
    mode := aSymbol.
    self geometry: self buildGeometry
]

{ #category : 'accessing' }
B5Arc >> startAngle [ 
^ startAngle 
]

{ #category : 'initialization' }
B5Arc >> startAngle: anAngle [
    startAngle := anAngle.
    self geometry: self buildGeometry
]

{ #category : 'accessing' }
B5Arc >> stopAngle [ 
^ stopAngle 
]

{ #category : 'initialization' }
B5Arc >> stopAngle: anAngle [
    stopAngle := anAngle.
    self geometry: self buildGeometry
]
