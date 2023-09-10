;Add at 2023/08/02, exercism about local test config: 
 
(defun my-eval-and-run-all-tests-in-buffer ()
  "Delete all loaded tests from the runtime, evaluate the current buffer and run all loaded tests with ert."
  (interactive)
  (ert-delete-all-tests)
  (eval-buffer)
  (ert 't))


;; Add at 2023/09/11, line number and solid separator:
(when (version< emacs-version "26.0.50" )
  (when (version< "22" emacs-version )
    (global-linum-mode 1)))

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

; a solid line separator,
; between the linenumber display and the buffer contents:
(setq linum-format "%4d \u2502 ")


;; Add at 2023/08/06, telega
(use-package telega
     :commands (telega)
     :init (setq telega-proxies
		 '((:server "localhost"
		    :port "7890"
		    :enable t
		    :type (:@type "proxyTypeSocks5")))
		 telega-chat-show-avatars t)
     (setq telega-chat-fill-column 65)
     (setq telega-emoji-use-images nil)
     ;;(setq telega-server-libs-prefix "...")
     :config
     (telega-notifications-mode t)
     (telega-mode-line-mode 1)
     (define-key telega-msg-button-map "k" nil)
     )

(provide 'init)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(deeper-blue)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )