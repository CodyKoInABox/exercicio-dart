

abstract class Movable {
  void moveUp();
  void moveDown();
  void moveLeft();
  void moveRight();
}


class MovablePoint implements Movable {

  int x;
  int y;
  int xSpeed;
  int ySpeed;

  MovablePoint(int x, int y, int xSpeed, int ySpeed): x = x, y = y, xSpeed = xSpeed, ySpeed = ySpeed;
  
  @override
  void moveUp() {
    y = y - ySpeed;
  }

  @override
  void moveDown() {
    y = y - ySpeed;
  }

  @override
  void moveLeft() {
    x = x - xSpeed;
  }
  
  @override
  void moveRight() {
    x = x + xSpeed;
  }

  @override
  String toString() => '($x, $y), speed=($x, $y)';

}

// class MovableCircle implements Movable {

//   int radius;
//   MovablePoint center = new MovablePoint(x, y, xSpeed, ySpeed);

//   MovableCircle(int x, int y, int xSpeed, int ySpeed, int radius): x = x, y = y, xSpeed = xSpeed, ySpeed = ySpeed, radius = radius;
// }



void main(){

  var point = MovablePoint(0, 0, 1, 1);

  print(point.toString());
  point.moveUp();
  point.moveUp();
  point.moveRight();
  print(point.toString());
  point.moveLeft();
  point.moveDown();
  print(point.toString());
}
