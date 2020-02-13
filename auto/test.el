(TeX-add-style-hook
 "test"
 (lambda ()
   (LaTeX-add-bibitems
    "expect"
    "fontenc-vs-inputenc"
    "verb_text"
    "hbox"
    "float_question"))
 :bibtex)

