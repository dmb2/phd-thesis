(require 'org)
(require 'ox-latex)
(setq org-latex-pdf-process
      '("latexmk -bibtex -pdflatex='pdflatex --shell-escape -interaction nonstopmode' -pdf -f %f"))
;; (setf org-latex-default-packages-alist
;;       (remove '("AUTO" "inputenc" t) org-latex-default-packages-alist))

(setf org-latex-default-packages-alist
      (remove '("" "fixltx2e" nil) org-latex-default-packages-alist))
(setq org-export-allow-bind-keywords t
      org-latex-with-hyperref nil)

(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))
(add-to-list 'org-latex-classes
                 '("dukedissertation"
                   "
\\documentclass[]{dukedissertation}
\\usepackage[backend=biber]{biblatex}
\\usepackage{color}
\\usepackage{bm}
\\usepackage{amsfonts}
\\usepackage{amsthm}
\\usepackage{setspace}
\\usepackage[version=3]{mhchem}
" 
                   ("\\section{%s}" . "\\section{%s}") 
                   ("\\subsection{%s}" . "\\subsection{%s}") 
                   ("\\subsubsection{%s}" . "\\subsubsection{%s}") 
                   ("\\paragraph{%s}" . "\\paragraph{%s}")
                   ("\\subparagraph{%s}" . "\\subparagraph{%s}")))