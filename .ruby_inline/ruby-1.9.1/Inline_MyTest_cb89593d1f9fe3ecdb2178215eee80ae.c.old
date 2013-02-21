#include "ruby.h"

# line 6 "/Dropbox/Dropbox/Ruby/inline.rb"
static VALUE factorial(VALUE self, VALUE _max) {
  int max = FIX2INT(_max);

        int i=max, result=1;
        while (i >= 2) { result *= i--; }
        return LONG2NUM(result);
      }


#ifdef __cplusplus
extern "C" {
#endif
  void Init_Inline_MyTest_cb89593d1f9fe3ecdb2178215eee80ae() {
    VALUE c = rb_cObject;
    c = rb_const_get(c, rb_intern("MyTest"));

    rb_define_method(c, "factorial", (VALUE(*)(ANYARGS))factorial, 1);

  }
#ifdef __cplusplus
}
#endif
