/**
 * Example with non-virtual classes. This is just to see how C++ optimizes
 * type-erased structures.
 */

class point {
  public:
    point(const double _x, const double _y) : x(_x), y(_y) {}

    double distance_squared() const {
      return x*x + y*y;
    }

    void modify() {
      x += y;
    }

  private:
    double x;
    double y;
};

#include <stdio.h>
int main() {
  point p1(4, 5);
  point *p2 = new point(4, 5);
  double total = 0;

  for (int i = 0; i < 100000000; ++i) {
    total += p1.distance_squared() + p2->distance_squared();
    p1.modify();
    p2->modify();
  }

  printf("total distance = %f\n", total);
  return 0;
}
