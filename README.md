# Markdown Converter in Racket #

This project contains:

1. a C library, `libmarkdown-converter`, which wraps
   [Discount](http://www.pell.portland.or.us/~orc/Code/discount), a C
   library that converts Markdown text into HTML, and
   
2. a Racket module, which loads `libmarkdown-converter` to support
   Markdown convertion.

To use this project, you need to run `make` to build
`libmarkdown-converter`.
