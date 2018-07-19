(require 'vemv.lang)
(require 'vemv.shortcuts.global.base)
(provide 'vemv.shortcuts.global)

(setq vemv/shortcuts/global/backspace               'vemv/backspace
      vemv/shortcuts/global/down                    'next-line
      vemv/shortcuts/global/end                     'vemv/end-of-line-or-code
      vemv/shortcuts/global/f11                     'vemv/maximize
      vemv/shortcuts/global/RET                     'newline-and-indent
      vemv/shortcuts/global/S-backspace             'vemv/force-backspace
      vemv/shortcuts/global/S-f7                    'vemv/previous-workspace
      vemv/shortcuts/global/S-f9                    'vemv/next-workspace
      vemv/shortcuts/global/f4                      nil
      vemv/shortcuts/global/f7                      'vemv/previous-project
      vemv/shortcuts/global/f8                      'vemv/after-file-open
      vemv/shortcuts/global/f9                      'vemv/next-project
      vemv/shortcuts/global/home                    'back-to-indentation
      vemv/shortcuts/global/left                    'left-char
      vemv/shortcuts/global/next                    'cua-scroll-up
      vemv/shortcuts/global/primary-1               'vemv/onelineize
      vemv/shortcuts/global/primary-3               'vemv/indent ;; NOTE: don't wrap it in vemv/safe-paredit-command, it already does so internally.
      vemv/shortcuts/global/primary-6               'vemv/emacs-reload
      vemv/shortcuts/global/primary-8               'vemv/toggle-verbosity
      vemv/shortcuts/global/primary-S-f             (argless
                                                     (let ((default-directory vemv/project-clojure-dir))
                                                       (call-interactively 'helm-do-ag)))
      vemv/shortcuts/global/primary-S-r             'vemv/run-this-deftest
      vemv/shortcuts/global/primary-S-y             'vemv/abort-ag
      vemv/shortcuts/global/primary-S-z             'undo-tree-redo
      vemv/shortcuts/global/primary-SPC             'cua-set-mark
      vemv/shortcuts/global/primary-a               'vemv/copy-selection-or-next-sexpr
      vemv/shortcuts/global/primary-b               'vemv/duplicate
      vemv/shortcuts/global/primary-backspace       'vemv/delete-this-line
      vemv/shortcuts/global/primary-backtick        'other-frame
      vemv/shortcuts/global/primary-bang            (argless
                                                     (replying-yes
                                                      (revert-buffer)))
      vemv/shortcuts/global/primary-down            'forward-paragraph
      vemv/shortcuts/global/primary-equal           'mark-whole-buffer
      vemv/shortcuts/global/primary-f               'vemv/search-in-this-buffer
      vemv/shortcuts/global/primary-j               'vemv/clojure-init-or-send-sexpr
      vemv/shortcuts/global/primary-k               'vemv/kill
      vemv/shortcuts/global/primary-left            (vemv/safe-paredit-command 'paredit-forward-barf-sexp)
      vemv/shortcuts/global/primary-n               'vemv/new-frame
      vemv/shortcuts/global/primary-o               'vemv/open
      vemv/shortcuts/global/primary-p               'vemv/repeat-last-search-in-this-buffer
      vemv/shortcuts/global/primary-q               'save-buffers-kill-terminal
      vemv/shortcuts/global/primary-r               'vemv/test-this-ns
      vemv/shortcuts/global/primary-right           (vemv/safe-paredit-command 'paredit-forward-slurp-sexp)
      vemv/shortcuts/global/primary-s               'vemv/save
      vemv/shortcuts/global/primary-semicolon       'toggle-truncate-lines
      vemv/shortcuts/global/primary-t               'vemv/fiplr
      vemv/shortcuts/global/primary-u               'cljr-add-missing-libspec
      vemv/shortcuts/global/primary-up              'backward-paragraph
      vemv/shortcuts/global/primary-v               'vemv/paste-from-clipboard
      vemv/shortcuts/global/primary-w               'vemv/close-this
      vemv/shortcuts/global/primary-y               'vemv/ag-replace
      vemv/shortcuts/global/primary-z               'undo-tree-undo
      vemv/shortcuts/global/prior                   'cua-scroll-down
      vemv/shortcuts/global/right                   'right-char
      vemv/shortcuts/global/secondary-S-k           'vemv/kill-backward-copying-content
      vemv/shortcuts/global/secondary-a             'vemv/copy-sexpr-content-backward
      vemv/shortcuts/global/secondary-backspace     (vemv/safe-paredit-command 'paredit-backward-kill-word)
      vemv/shortcuts/global/secondary-backtick      'xref-pop-marker-stack
      vemv/shortcuts/global/secondary-colon         (argless (call-interactively 'eval-expression))
      vemv/shortcuts/global/secondary-k             'vemv/kill-backward
      vemv/shortcuts/global/secondary-left          'backward-word
      vemv/shortcuts/global/secondary-left-bracket  (vemv/safe-paredit-command 'paredit-backward)
      vemv/shortcuts/global/secondary-left-parens   (vemv/safe-paredit-command 'paredit-wrap-sexp)
      vemv/shortcuts/global/secondary-next          'previous-buffer
      vemv/shortcuts/global/secondary-o             'vemv/open-at-project-root
      vemv/shortcuts/global/secondary-prior         'next-buffer
      vemv/shortcuts/global/secondary-RET           'vemv/toggle-ns-hiding
      vemv/shortcuts/global/secondary-right         'forward-word
      vemv/shortcuts/global/secondary-right-bracket (vemv/safe-paredit-command 'paredit-forward)
      vemv/shortcuts/global/secondary-t             'vemv/open-file-via-fiplr-then-close-previous-buffer
      vemv/shortcuts/global/secondary-up            (vemv/safe-paredit-command 'paredit-splice-sexp-killing-backward)
      vemv/shortcuts/global/secondary-x             'vemv/smex
      vemv/shortcuts/global/secondary-w             'vemv/close-all-other-file-buffers
      vemv/shortcuts/global/tertiary-RET            'vemv/load-clojure-buffer
      vemv/shortcuts/global/tertiary-a              'vemv/copy-inserting-at-kill-list
      vemv/shortcuts/global/tertiary-backtick       'vemv/jump-to-clojure-definition
      vemv/shortcuts/global/tertiary-end            'end-of-buffer
      vemv/shortcuts/global/tertiary-f              'helm-do-ag-this-file
      vemv/shortcuts/global/tertiary-home           'beginning-of-buffer
      vemv/shortcuts/global/tertiary-j              'cider-eval-sexp-at-point
      vemv/shortcuts/global/tertiary-k              'vemv/cut
      vemv/shortcuts/global/tertiary-left           'vemv/previous-file-buffer
      vemv/shortcuts/global/tertiary-left-bracket   'vemv/pull-next-sexpr
      vemv/shortcuts/global/tertiary-o              'vemv/open-project
      vemv/shortcuts/global/tertiary-right          'vemv/next-file-buffer
      vemv/shortcuts/global/tertiary-s              'vemv/save-all-buffers-for-this-project
      vemv/shortcuts/global/tertiary-v              'vemv/paste-from-kill-list
      vemv/shortcuts/global/tertiary-w              'vemv/close-all-file-buffers
      vemv/shortcuts/global/tertiary-x              'vemv/dumb-cut
      vemv/shortcuts/global/up                      'previous-line)

;; other S-RET syntaxes don't work. TODO: abstract away this
(global-set-key [(shift return)] 'vemv/clear-cider-repl-buffer)

;; same here. control-ret is interpreted as s-return rather than as tertiary-RET
(global-set-key [(s return)] 'vemv/load-clojure-buffer)
