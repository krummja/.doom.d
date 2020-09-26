;;; -*- lexical-binding: t -*-
(defun add-tangle-headers ()
  (message "running in %s" (buffer-file-name))
  (cond
   ((f-ext? (buffer-file-name) "py")
    (goto-char (point-min))
    (insert "# This is a generated file - do not edit.\n"))
   ((f-ext? (buffer-file-name) "el")
    (goto-char (point-min))
    (insert ";;; -*- lexical-binding: t -*-\n"))
   (t
    nil))
  (save-buffer))

(defun add-latex-framework ()
  (message "running in %s" (buffer-file-name))
  (cond
   ((f-ext? (buffer-file-name) "tex")
    (goto-char (point-min))
    (insert "\documentclass[12pt]{article}\n")
    (forward-line 1)
    (insert "\insert{preamble.tex}\n")
    (forward-line 1)
    (insert "\title{<Autogenerated LaTeX Title>}\n")
    (forward-line 1)
    (insert "\begin{document}")
    (goto-char (point-max))
    (forward-line 1)
    (insert "\end{document}"))
   (t
    nil))
  (save-buffer))
