[![Actions Status](https://github.com/lizmat/P5getservbyname/workflows/test/badge.svg)](https://github.com/lizmat/P5getservbyname/actions)

NAME
====

Raku port of Perl's getservbyname() and associated built-ins

SYNOPSIS
========

    use P5getservbyname;
    # exports getservbyname, getservbyport, getservent, setservent, endservent

    say getservbyport(Scalar, 25, "tcp");   # "smtp"

    my @result_byname = getservbyname("smtp");

    my @result_byport = getservbyport(|@result_byname[3,4]);

DESCRIPTION
===========

This module tries to mimic the behaviour of Perl's `getservbyname` and associated built-ins as closely as possible in the Raku Programming Language.

It exports by default:

    endservent getservbyname getservbyport getservent setservent

ORIGINAL PERL 5 DOCUMENTATION
=============================

    getservbyname NAME,PROTO
    getservbyport PORT,PROTO
    getservent
    setservent STAYOPEN
    endservent
            These routines are the same as their counterparts in the system C
            library. In list context, the return values from the various get
            routines are as follows:

             # 0        1          2           3         4
             ( $name,   $aliases,  $port,      $proto    ) = getserv*

            (If the entry doesn't exist you get an empty list.)

            In scalar context, you get the name, unless the function was a
            lookup by name, in which case you get the other thing, whatever it
            is. (If the entry doesn't exist you get the undefined value.)

PORTING CAVEATS
===============

This module depends on the availability of POSIX semantics. This is generally not available on Windows, so this module will probably not work on Windows.

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

If you like this module, or what I’m doing more generally, committing to a [small sponsorship](https://github.com/sponsors/lizmat/) would mean a great deal to me!

Source can be located at: https://github.com/lizmat/P5getservbyname . Comments and Pull Requests are welcome.

COPYRIGHT AND LICENSE
=====================

Copyright 2018, 2019, 2020, 2021, 2023 Elizabeth Mattijsen

Re-imagined from Perl as part of the CPAN Butterfly Plan.

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

