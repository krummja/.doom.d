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
