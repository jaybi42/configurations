;*******************************************************************************;
;                                                                               ;
;                                                          :::      ::::::::    ;
;    dotemacs                                            :+:      :+:    :+:    ;
;                                                      +:+ +:+         +:+      ;
;    by: thor <thor@42.fr>                           +#+  +:+       +#+         ;
;                                                  +#+#+#+#+#+   +#+            ;
;    Created: 2013/06/18 14:01:14 by thor               #+#    #+#              ;
;    Updated: 2016/02/16 12:53:04 by jguthert         ###   ########.fr        ;
;                                                                               ;
;*******************************************************************************;

; Load general features files
(setq config_files "/usr/share/emacs/site-lisp/")
(setq load-path (append (list nil config_files) load-path))

(load "list.el")
(load "string.el")
(load "comments.el")
(load "header.el")

(autoload 'php-mode "php-mode" "Major mode for editing PHP code" t)
(add-to-list 'auto-mode-alist '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))

; Set default emacs configuration
(set-language-environment "UTF-8")
(setq ring-bell-function 'ignore)
(setq-default font-lock-global-modes t)
(setq-default line-number-mode t)
(setq-default column-number-mode t)
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(global-set-key (kbd "C-c j") 'replace-regexp)
(global-set-key (kbd "C-c n") 'query-replace-regexp)
(global-set-key (kbd "DEL") 'backward-delete-char)
(setq-default c-backspace-function 'backward-delete-char)
(setq-default c-basic-offset 4)
(setq-default c-default-style "linux")
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
	  		  				 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))

; Load user configuration
(if (file-exists-p "~/.myemacs") (load-file "~/.myemacs"))

;test
;(font-lock-add-keywords
; 'c-mode
;  '(("\\<\\(\\sw+\\) ?(" 1 'font-lock-function-name-face)))


;*******************************************************************************;

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(global-set-key (kbd "C-x C-y ")
                (lambda()
                  "replace spaces"
                  (interactive)
                  (setq colnb (current-column))
                  (setq linenb (line-number-at-pos))
                  (replace-string "    " "\t")
                  (goto-line linenb) (move-to-column linenb)
                  (replace-string "   " "\t")
                  (goto-line linenb) (move-to-column linenb)
                  (replace-string "  " "\t")
                  (goto-line linenb) (move-to-column linenb)
                  (replace-string "\t " "\t")
                  (goto-line linenb) (move-to-column linenb)
                  ))