// Using Constant Constractor
class Point {
  final int x;
  final int y;
  const Point(this.x, this.y);
  const Point.withNameParam({required this.x, required this.y});

  List<int> getCoordinates() {
    return [x, y];
  }
}