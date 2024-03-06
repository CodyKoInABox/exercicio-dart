
class Shape {

  String color;
  bool filled;

  Shape(String color, bool filled): color = color, filled = filled;

  String getColor() => color;
  void setColor(String color) => color = color;

  bool isFilled() => filled;
  void setFilled(bool filled) => filled = filled;

  @override
  String toString() => 'Shape[color=$color, filled=$filled]';
}


class Circle extends Shape {
  
  double radius;

  Circle(double radius, String color, bool filled): radius = radius, super(color, filled);
}


class Rectangle extends Shape {

  double length;
  double width;

  Rectangle(double length, double width, String color, bool filled): length = length, width = width, super(color, filled);
}


class Square extends Rectangle{
  double side;

  Square(double side, String color, bool filled): side = side, super(side, side, color, filled);
}


void main(){

  Square square = new Square(5, 'red', false);

  print(square.length);
  print(square.width);
  print(square.side);
}
