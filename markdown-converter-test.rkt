#lang racket

(require rackunit)
(require "./markdown-converter.rkt")

(when (file-exists? "a.html")
  (delete-file "a.html"))

(check-true (file-exists? "libmarkdown-converter.dylib"))

(let ((f (open-markdown-converter "libmarkdown-converter")))
  (f  "## Title ##" "a.html"))

(check-true (file-exists? "a.html"))
