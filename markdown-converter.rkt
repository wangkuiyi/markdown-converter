#lang racket

(require ffi/unsafe
         ffi/unsafe/define)

(define (open-markdown-converter lib)
  (define-ffi-definer define-markdown-converter
    (ffi-lib "libmarkdown-converter"))
  (define-markdown-converter markdown_convert
    (_fun _string _string -> _int))
  (lambda (doc out)
    (void (markdown_convert doc out))))

(provide open-markdown-converter)
