#[macro_use]
extern crate rutie;
extern crate deunicode;

use rutie::{Module, Object, RString, VM};
use deunicode::deunicode;

module!(Rdeunicode);

methods!(
    Rdeunicode,
    _itself,

    fn pub_deunicode(input: RString) -> RString {
        let ruby_string = input.
          map_err(|e| VM::raise_ex(e) ).
          unwrap();

        RString::new_utf8(
          &deunicode(
            &ruby_string.
            to_string()
          )
        )
    }
);

#[allow(non_snake_case)]
#[no_mangle]
pub extern "C" fn Init_rdeunicode() {
    Module::from_existing("Rdeunicode").define(|itself| {
        itself.def_self("deunicode", pub_deunicode);
        itself.define_nested_class("Public", None);
    });
}