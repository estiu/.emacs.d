(require 'vemv.lang)
(require 'vemv.shortcuts.global.base)
(provide 'vemv.shortcuts.global)

;; workarounds. XXX don't emit these to global.base in the first place
(setq vemv/shortcuts/global/ampersand               (argless (insert "&")))
(setq vemv/shortcuts/global/at                      (argless (insert "@")))
(setq vemv/shortcuts/global/backtick                (argless (insert "`")))
(setq vemv/shortcuts/global/bang                    (argless (insert "!")))
(setq vemv/shortcuts/global/bar                     (argless (insert "|")))
(setq vemv/shortcuts/global/caret                   (argless (insert "^")))
(setq vemv/shortcuts/global/colon                   (argless (insert ":")))
(setq vemv/shortcuts/global/comma                   (argless (insert ",")))
(setq vemv/shortcuts/global/dash                    (argless (insert "-")))
(setq vemv/shortcuts/global/dollar                  (argless (insert "$")))
(setq vemv/shortcuts/global/dot                     (argless (insert ".")))
(setq vemv/shortcuts/global/equal                   (argless (insert "=")))
(setq vemv/shortcuts/global/hash                    (argless (insert "#")))
(setq vemv/shortcuts/global/left-bracket            (argless (insert "[")))
(setq vemv/shortcuts/global/left-curly              (argless (insert "{")))
(setq vemv/shortcuts/global/left-parens             (argless (insert "(")))
(setq vemv/shortcuts/global/percent                 (argless (insert "%")))
(setq vemv/shortcuts/global/plus                    (argless (insert "+")))
(setq vemv/shortcuts/global/question-mark           (argless (insert "?")))
(setq vemv/shortcuts/global/quote                   (argless (insert "'")))
(setq vemv/shortcuts/global/right-bracket           (argless (insert "]")))
(setq vemv/shortcuts/global/right-curly             (argless (insert "}")))
(setq vemv/shortcuts/global/right-parens            (argless (insert ")")))
(setq vemv/shortcuts/global/semicolon               (argless (insert ";")))
(setq vemv/shortcuts/global/slash                   (argless (insert "/")))
(setq vemv/shortcuts/global/SPC                     (argless (insert " ")))
(setq vemv/shortcuts/global/star                    (argless (insert "*")))
(setq vemv/shortcuts/global/underscore              (argless (insert "_")))

(setq vemv/shortcuts/global/backspace               vemv/backspace)
(setq vemv/shortcuts/global/down                    'next-line)
(setq vemv/shortcuts/global/end                     'vemv/end-of-line-or-code)
(setq vemv/shortcuts/global/f11                     'vemv/maximize)
(setq vemv/shortcuts/global/f4                      vemv/f4)
(setq vemv/shortcuts/global/f6                      'vemv/toggle-ns-hiding)
(setq vemv/shortcuts/global/f7                      'vemv/previous-file-buffer)
(setq vemv/shortcuts/global/f8                      'vemv/after-file-open)
(setq vemv/shortcuts/global/f9                      'vemv/next-file-buffer)
(setq vemv/shortcuts/global/home                    'back-to-indentation)
(setq vemv/shortcuts/global/left                    'left-char)
(setq vemv/shortcuts/global/primary-3               'vemv/indent)
(setq vemv/shortcuts/global/primary-a               'vemv/copy-selection-or-next-sexpr)
(setq vemv/shortcuts/global/primary-b               'vemv/duplicate)
(setq vemv/shortcuts/global/primary-backspace       'vemv/delete-this-line)
(setq vemv/shortcuts/global/primary-backtick        'other-frame)
(setq vemv/shortcuts/global/primary-down            'forward-paragraph)
(setq vemv/shortcuts/global/primary-equal           'mark-whole-buffer)
(setq vemv/shortcuts/global/primary-f               vemv/c-f)
(setq vemv/shortcuts/global/primary-j               vemv/c-j)
(setq vemv/shortcuts/global/primary-k               'vemv/kill)
(setq vemv/shortcuts/global/primary-n               vemv/c-n)
(setq vemv/shortcuts/global/primary-o               'vemv/open)
(setq vemv/shortcuts/global/primary-p               vemv/c-p)
(setq vemv/shortcuts/global/primary-q               'save-buffers-kill-terminal)
(setq vemv/shortcuts/global/primary-s               'vemv/save)
(setq vemv/shortcuts/global/primary-S-z             'undo-tree-redo)
(setq vemv/shortcuts/global/primary-semicolon       'toggle-truncate-lines)
(setq vemv/shortcuts/global/primary-SPC             'cua-set-mark)
(setq vemv/shortcuts/global/primary-t               'vemv/fiplr)
(setq vemv/shortcuts/global/primary-up              'backward-paragraph)
(setq vemv/shortcuts/global/primary-v               'cua-paste)
(setq vemv/shortcuts/global/primary-w               'vemv/close-this)
(setq vemv/shortcuts/global/primary-z               'undo-tree-undo)
(setq vemv/shortcuts/global/RET                     'newline)
(setq vemv/shortcuts/global/right                   'right-char)
(setq vemv/shortcuts/global/S-backspace             vemv/shift-backspace)
(setq vemv/shortcuts/global/secondary-a             vemv/alt-a)
(setq vemv/shortcuts/global/secondary-backspace     'paredit-backward-kill-word)
(setq vemv/shortcuts/global/secondary-k             vemv/alt-k)
(setq vemv/shortcuts/global/secondary-left-bracket  'paredit-backward)
(setq vemv/shortcuts/global/secondary-next          'previous-buffer)
(setq vemv/shortcuts/global/secondary-prior         'next-buffer)
(setq vemv/shortcuts/global/secondary-right-bracket 'paredit-forward)
(setq vemv/shortcuts/global/secondary-S-k           vemv/alt-shift-k)
(setq vemv/shortcuts/global/secondary-t             vemv/alt-t)
(setq vemv/shortcuts/global/secondary-up            'paredit-splice-sexp-killing-backward)
(setq vemv/shortcuts/global/secondary-x             'vemv/smex)
(setq vemv/shortcuts/global/tertiary-backtick       'vemv/control-backtick)
(setq vemv/shortcuts/global/tertiary-end            'end-of-buffer)
(setq vemv/shortcuts/global/tertiary-home           'beginning-of-buffer)
(setq vemv/shortcuts/global/tertiary-j              'cider-eval-sexp-at-point)
(setq vemv/shortcuts/global/tertiary-k              'vemv/cut)
(setq vemv/shortcuts/global/tertiary-o              'vemv/open-project)
(setq vemv/shortcuts/global/tertiary-RET            'vemv/load-clojure-buffer)
(setq vemv/shortcuts/global/up                      'previous-line)
