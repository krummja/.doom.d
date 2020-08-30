;;; -*- lexical-binding: t -*-
(load! "./elisp/init-user-information.el")
(load! "./elisp/init-path-constants.el")
(load! "./elisp/custom-functions.el")

(add-hook 'org-babel-post-tangle-hook 'add-tangle-headers)
