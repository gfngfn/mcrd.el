;;; mcrd.el --- elisp for Macrodown                  -*- lexical-binding: t; -*-

;; Copyright (C) 2016  

;; Author:  <K1laptop03@K1LAPTOP03>
;; Keywords:

(provide 'mcrd)

(defface mcrd-control-sequence-name-face
  '((t (:foreground "#8888ff" :background "dark")))
  "Macrodown control sequence")

(defface mcrd-id-name-face
  '((t (:foreground "#ff8844" :background "dark")))
  "Macrodown ID name argument")

(defface mcrd-class-name-face
  '((t (:foreground "#ff4488" :background "dark")))
  "Macrodown class name argument")

(defface mcrd-var-in-string-face
  '((t (:foreground "#44ff88" :background "dark")))
  "Macrodown variable in string")

(defface mcrd-escaped-character
  '((t (:foreground "#cc88ff" :background "dark")))
  "Macrodown escaped character")

(defface mcrd-literal-area
  '((t (:foreground "#ffff44" :background "dark")))
  "Macrodown literal area")

(define-generic-mode mcrd-mode
  '(?%)

  '("let" "let-mutable" "let-lazy" "in" "and"
    "match" "with" "if" "then" "else"
    "type" "val" "of"
    "module" "struct" "sig" "end"
    "before" "new-global-hash")

  '(("\\(\\\\\\(?:\\\\\\\\\\)*[a-zA-Z\\-]+\\)\\>"
     (1 'mcrd-control-sequence-name-face t))
    ("\\(#[a-z][0-9A-Za-z\\-]+\\)\\>"
     (1 'mcrd-id-name-face t))
    ("\\(\\.[a-z][0-9A-Za-z\\-]+\\)\\>"
     (1 'mcrd-class-name-face t))
    ("\\(@[a-z][0-9A-Za-z\\-]*\\)\\>"
     (1 'mcrd-var-in-string-face t))
    ("\\(\\\\\\(?:@\\|`\\|\\*\\| \\|%\\||\\|;\\|{\\|}\\|\\\\\\)\\)"
     (1 'mcrd-escaped-character t))
    ("\\(`\\(?:[^`]\\|\\n\\)+`\\)"
     (1 'mcrd-literal-area t)))

  nil
  '())
