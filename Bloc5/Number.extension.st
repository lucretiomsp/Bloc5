Extension { #name : 'Number' }

{ #category : '*Bloc5' }
Number >> map: anArray [
    | low1 high1 low2 high2 result lo hi |
    low1 := anArray first.
    high1 := anArray second.
    low2 := anArray third.
    high2 := anArray fourth.
    result := low2 + (((self - low1) / (high1 - low1)) * (high2 - low2)).
    lo := low2 min: high2.
    hi := low2 max: high2.
    ^ (result max: lo) min: hi
]

{ #category : '*Bloc5' }
Number >> norm: anArray [
	"Map the receiver from range #(start end) to a value between 0 and 1.
	 Not clamped — out-of-range inputs produce out-of-range results.
	 Example: 2 norm: #(0 10)  =>  0.2"

	| start end |
	start := anArray first.
	end := anArray second.
	^ (self - start / (end - start)) asFloat
]
