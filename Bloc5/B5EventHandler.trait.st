"
I am the Trait for shared event handlers
"
Trait {
	#name : 'B5EventHandler',
	#category : 'Bloc5-Traits',
	#package : 'Bloc5',
	#tag : 'Traits'
}

{ #category : 'event handling' }
B5EventHandler >> onKeyDown: aBlock [

	
	self
		addEventHandlerOn: BlKeyDownEvent
		do: [ :evt | aBlock value: evt key ]
]

{ #category : 'event handling' }
B5EventHandler >> onKeyDown: aKeyName do: aBlock [

self onKeyDown: [  :evt | evt name == aKeyName  ifTrue: aBlock]
]

{ #category : 'event handling' }
B5EventHandler >> onKeyDownNamed: aKeyName do: aBlock [

self onKeyDown: [  :evt | evt name == aKeyName  ifTrue: aBlock]
]

{ #category : 'event handling' }
B5EventHandler >> onKeyUp: aBlock [

	
	self
		addEventHandlerOn: BlKeyUpEvent
		do: [ :evt | aBlock value: evt key ]
]

{ #category : 'event handling' }
B5EventHandler >> onKeyUpNamed: aKeyName do: aBlock [

	self onKeyUp: [ :evt | evt name == aKeyName ifTrue: aBlock ]
]

{ #category : 'event handling' }
B5EventHandler >> onMouseClick: aBlock [
	self
		addEventHandlerOn: BlClickEvent
		do: [ :evt | aBlock value: evt position x value: evt position y ]
]

{ #category : 'event handling' }
B5EventHandler >> onMouseDown: aBlock [
    self
        addEventHandlerOn: BlMouseDownEvent
        do: [ :evt |
            aBlock
                value: evt position x
                value: evt position y ]
]

{ #category : 'event handling' }
B5EventHandler >> onMouseDragged: aBlock [
    "p5-style mouseDragged: fires continuously while the pointer moves with button held.
     Registers a drag-start handler to arm the gesture, then forwards each drag event."
    self addEventHandlerOn: BlDragStartEvent do: [ :event | event consumed: true ].
    self addEventHandlerOn: BlDragEvent do: [ :event |
        event consumed: true.
        aBlock value: event ]
]

{ #category : 'event handling' }
B5EventHandler >> onMouseEnter: aBlock [
	self
		addEventHandlerOn: BlMouseEnterEvent
		do: [ :evt | aBlock value: evt position x value: evt position y ]
]

{ #category : 'event handling' }
B5EventHandler >> onMouseLeave: aBlock [
	self
		addEventHandlerOn: BlMouseLeaveEvent
		do: [ :evt | aBlock value: evt position x value: evt position y ]
]

{ #category : 'event handling' }
B5EventHandler >> onMouseOver: aBlock [
	self
		addEventHandlerOn: BlMouseOverEvent
		do: [ :evt | aBlock value: evt position x value: evt position y ]
]

{ #category : 'event handling' }
B5EventHandler >> onMouseUp: aBlock [

	self
		addEventHandlerOn: BlMouseUpEvent
		do: [ :evt | aBlock value: evt position x value: evt position y ]
]

{ #category : 'event handling' }
B5EventHandler >> onMouseWheel: aBlock [
	self
		addEventHandlerOn: BlMouseWheelEvent
		do: [ :evt | aBlock value: evt ]
]

{ #category : 'event handling' }
B5EventHandler >> onRightClick: aBlock [
	self
		addEventHandlerOn: BlSecondaryClickEvent
		do: [ :evt | aBlock value: evt position x value: evt position y ]
]
