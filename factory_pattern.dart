// factory pattern
-------------------------------------------------------
enum ShapeType {triangle, rectangle }

abstract class Shape {
  
  factory Shape(ShapeType type) {    
    if(type == ShapeType.rectangle)
      return Rectangle();
    else
      return Triangle();
  }

  void draw();
}

class Triangle implements Shape {
  void draw() {
    print('Triangle');
  }
}

class Rectangle implements Shape {  
  void draw() {
    print('Rectangle');
  }
}

void main(){
  var s1 = Shape(ShapeType.triangle);
  var s2 = Shape(ShapeType.rectangle);
  
  s1.draw();
  s2.draw();    
}