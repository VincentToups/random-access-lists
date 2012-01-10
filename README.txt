Random Access Lists
-------------------

This is an implementation of Random Access Lists, as described by
David Van Horn in SRFI-101: Purely Functional Random Access Pairs and
Lists.  

I've ported this library to Common Lisp but it is otherwise his work,
and is distributed under the same terms as that implementation:

>  SRFI 101: Purely Functional Random-Access Pairs and Lists
>  Copyright (c) David Van Horn 2009.  All Rights Reserved.
>
>  Permission is hereby granted, free of charge, to any person obtaining
>  a copy of this software and associated documentation
>  files (the "Software"), to deal in the Software without restriction,
>  including without limitation the rights to use, copy, modify, merge,
>  publish, distribute, sublicense, and/or sell copies of the Software,
>  and to permit persons to whom the Software is furnished to do so,
>  subject to the following conditions:
>
>  The above copyright notice and this permission notice shall be
>  included in all copies or substantial portions of the Software.
>
>  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
>  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
>  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
>  NONINFRINGEMENT. REMEMBER, THERE IS NO SCHEME UNDERGROUND. IN NO EVENT
>  SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
>  DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
>  OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR
>  THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Random Access Lists are a persistent data structure with `O(1)` `cons`,
`car`, `cdr`, and so forth but with much better performance for random
access and random persistent update, `O(log(n))`.

Usage:
------

Creation: 

    (ra-list 1 2 3 4) ; -> #S(PL-CONS
      :SIZE 1
      :TREE 1
      :REST #S(PL-CONS ...))

Access:

    (setq r (ra-list 1 2 3 4))
    (ra-list-ref r 2) -> 3
    (ra-car r) -> 1
    (ra-cdr r) -> #S(PL-CONS :SIZE 3 :TREE #S(PL-NODE ...))

Update:

    (ra-list-ref (ra-list-set r 2 100) 2) -> 100
    (ra-list-ref r 2) -> 3

Updates are _persistent_, in that they do not change previous version
of the list.  They merely return a new list with the updated value in
place.

Many functions of the `ra-caddr`, `ra-cddr`, etc are also provided
along with basic list manipulation functions like `ra-map`.
    