/**
 * Linked list implementation with virtuals.
 */

template <class T, class U>
class unary_function {
  virtual U operator() (const T x) = 0;
};

template <class T>
class list {
};

template <class T>
class cons : list<T> {
  private:
    const T       &head;
    const cons<T> *tail;

  public:
    cons(const T &_head, const cons<T> *_tail) : head(_head), tail(_tail) {}

    const T       &h() const {return head;}
    const cons<T> *t() const {return tail;}
};

template

const cons<int> *naturals(const int n) {
  cons<int> const *current = new cons<int>(n, (cons<int>*)0);
  for (int i = 1; i < n; ++i) current = new cons<int>(i, current);
  return current;
}

#include <stdio.h>

int main() {
  int total = 0;
  for (cons<int> const *ns = naturals(10000000); ns; ns = ns->t())
    total += ns->h();
  printf("total is %d\n", total);
  return 0;
}
