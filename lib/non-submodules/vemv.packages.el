;;; -*- lexical-binding: t -*-

(require 'package)

(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(package-initialize)

(add-to-list 'same-window-buffer-names "*Compile-Log*")

(setq byte-compile-verbose nil)
(setq byte-compile-warnings nil)
(setq byte-compile-log-warning-function (argless))

(setq vemv/packages-refreshed nil)

(dolist (package '(edn inflections hydra company queue fiplr smartparens yasnippet multiple-cursors benchmark-init
                       dash simpleclip helm-ag git-timemachine paren-face haml-mode ruby-end highlight-indent-guides))
  (unless (package-installed-p package)
    (vemv/verbosely
     (unless vemv/packages-refreshed
       (package-refresh-contents)
       (setq vemv/packages-refreshed t))
     (package-install package))))

;; M-x benchmark-init/show-durations-tabulated / M-x benchmark-init/show-durations-tree
(require 'benchmark-init)
(add-hook 'after-init-hook 'benchmark-init/deactivate)

(require 'saveplace)
(require 'dash)
(require 'popup)
(require 'smex)
(require 'company)
(require 'cider)
(electric-indent-mode -1)
(require 'epl)
(require 'pkg-info)
(require 'spinner)
(require 'ruby-mode)
(require 'haml-mode)
(require 'js)
(require 'comint)
(require 'es-lib)
(require 'es-windows)
(require 'project-explorer)
(require 'paredit)
(require 'undo-tree)
(require 's)
(require 'cider)
(require 'clj-refactor)
(require 'fiplr)
(require 'helm-ag)
(require 'desktop)
(require 'smartparens-config)

;; Eases editing locally-modified packages.
;; Also makes things faster.
;; Example:
;; Fork a package, place the git repo outside ~/.emacs.d
;; `ln -s` the relevant file to ~/.emacs.d/elpa/the-package/foo.el
;; rm ~/.emacs.d/elpa/the-package/foo.elc
;; restart emacs.

(let* ((lib-dir (expand-file-name "~/.emacs.d/lib/"))
       (dirs (->> lib-dir
                  directory-files
                  (-remove (lambda (x)
                             (member x `("." ".." "non-submodules"))))
                  (mapcar (lambda (x)
                            (concat lib-dir x)))
                  (cons (expand-file-name "~/.emacs.d/elpa")))))
  (dolist (dir dirs)
    (byte-recompile-directory dir 0)))

(provide 'vemv.packages)
