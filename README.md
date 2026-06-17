# Bloc5
A high-level visual arts API for [Bloc](https://github.com/pharo-graphics/Bloc), inspired by [Processing](https://processing.org/)/[p5.js](https://p5js.org/), designed to make interactive graphics and animations easy for artists and creative minds.
B5 (Bloc5)

Status


Many 2D shapes (Circle, Ellipse, Square, Rect, Triangle, Quad, Arc, Line, Point, RegularPolygon, Bezier, Star, RoundedRect, Spline, Text, Image)
Animation via B5Space>>drawAnimation:, configurable frame rate
3D (raylib + FFI) planned.


## Example: 3 shapes animating @ 30fps

```smalltalk
| space circle square triangle t |

space := B5Space new.
space frameRate: 30.

circle := B5Circle new
    position: 150 @ 300;
    diameter: 80;
    background: Color red.

square := B5Square new
    position: 400 @ 300;
    extent: 80 @ 80;
    background: Color blue.

triangle := B5Triangle new
    v1: 600 @ 260;
    v2: 680 @ 260;
    v3: 640 @ 340;
    background: Color green.

space root
    addChild: circle;
    addChild: square;
    addChild: triangle.

t := 0.

space drawAnimation: [
    t := t + 0.05.

    "circle bounces vertically"
    circle position: 150 @ (300 + (50 * t sin)).

    "square pulses in size"
    square extent: (80 + (20 * t sin)) asPoint.

    "triangle drifts right, wrapping at the edge"
    triangle
        v1: (triangle v1 + (2 @ 0));
        v2: (triangle v2 + (2 @ 0));
        v3: (triangle v3 + (2 @ 0))
].

space show.
```
