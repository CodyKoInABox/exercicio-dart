
import 'dart:math';

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
  
  double getArea() => radius * radius * pi;
  double getPerimeter() => radius * pi * 2;

  @override
  String toString() => 'Circle[radius=$radius, color=$color, filled=$filled]';
}


class Rectangle extends Shape {

  double length;
  double width;

  Rectangle(double length, double width, String color, bool filled): length = length, width = width, super(color, filled);

  double getArea() => length * width;
  double getPerimeter() => (length + width) * 2;

  @override
  String toString() => 'Rectangle[length=$length, width=$width, color=$color, filled=$filled]';
}


class Square extends Rectangle{

  Square(double side, String color, bool filled): super(side, side, color, filled);

  @override
  String toString() => 'Square[side=$length, color=$color, filled=$filled]';
}


void main(){

  Square square = new Square(5, 'red', false);
  Circle circle = new Circle(3, 'blue', true); 

  print(square);
  print(square.getArea());
  print(circle);
  print(circle.getArea());
}
