class Rectangle {

  double length;
  double width;

  Rectangle(double length, double width): length = length, width = width;

  double getLength() => length;
  double getWidth() => width;

  double setLength(double length) => length = length;
  double setWidth(double width) => width = width;

  double getArea() => length * width;
  double getPerimeter() => (length + width) * 2;

  @override
  String toString() => 'Rectangle[length=$length, width=$width]';

}


void main(){
  Rectangle rectangle = new Rectangle(5, 7);

  print(rectangle);
  print(rectangle.getArea());
  print(rectangle.getPerimeter());

}
