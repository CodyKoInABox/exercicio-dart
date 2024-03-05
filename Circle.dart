


import 'dart:math';

class Circle {

  double radius;


  Circle(double radius): radius = radius;

  double getArea() => radius * radius * pi;

  // this string will realise when an object of class Circle is invoked as a String
  @override
  String toString() => 'Circle[radius=$radius]';
}


void main(){

  Circle circle = new Circle(5);

  print(circle.radius);
  print(circle);
  print(circle.getArea());

}
