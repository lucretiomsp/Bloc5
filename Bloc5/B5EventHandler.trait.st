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
B5EventHandler >> onClick: aBlock [
	self
		addEventHandlerOn: BlClickEvent
		do: [ :evt | aBlock value: evt position x value: evt position y ]
]

{ #category : 'event handling' }
B5EventHandler >> onKeyDown: aBlock [
	self requestFocus.
	self
		addEventHandlerOn: BlKeyDownEvent
		do: [ :evt | aBlock value: evt key ]
 
]

{ #category : 'event handling' }
B5EventHandler >> onKeyUp: aBlock [
	self requestFocus.
	self
		addEventHandlerOn: BlKeyUpEvent
		do: [ :evt | aBlock value: evt key ]
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
