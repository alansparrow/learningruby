#include "ruby.h"

# line 15 "/Dropbox/Dropbox/Ruby/factorial.rb"
static VALUE factorial(VALUE self, VALUE _value) {
  int value = FIX2INT(_value);

          long result = 1, i = 1;
          for (i = 1; i <= value; i++) {
            result *= i;
          }
          return LONG2NUM(result);
        }
      


#ifdef __cplusplus
extern "C" {
#endif
  void Init_Inline_CFactorial_cb89593d1f9fe3ecdb2178215eee80ae() {
    VALUE c = rb_cObject;
    c = rb_const_get(c, rb_intern("CFactorial"));

    rb_define_method(c, "factorial", (VALUE(*)(ANYARGS))factorial, 1);

  }
#ifdef __cplusplus
}
#endif
