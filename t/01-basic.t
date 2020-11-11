use v6.*;
use Test;
use P5getservbyname;

my @supported = <
  endservent getservbyname getservbyport getservent setservent
>.map: '&' ~ *;

plan @supported * 2;

for @supported {
    ok defined(::($_)),              "is $_ imported?";
    nok P5getservbyname::{$_}:exists, "is $_ NOT externally accessible?";
}

# vim: expandtab shiftwidth=4
