abstract class Image {
  bool scale(double scaleFactor);
  bool blur(double blurFactor);
  bool flip(int flipAxis) {
    return flipAxis == 0;
  }
}

class Png extends Image {
  @override
  bool scale(double scaleFactor) {
    if(scaleFactor < 0.5) return false;
    return true;
  }

  @override
  bool blur(double blurFactor) {
    if(blurFactor < 0.2) return false;
    return true;
  }

  bool rotate(int angle) {
    return angle < -40;
  }
}

void main() {
  Png png1 = Png();
  print(png1.blur(0.15));
  print(png1.flip(0));
}