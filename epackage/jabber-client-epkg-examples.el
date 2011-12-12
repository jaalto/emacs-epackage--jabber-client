;; Prevent loading this file
(error "jabber-client-epkg-examples.el is not a config file.")

;; To start Jabber, use M-x jabber-chat-with

;;  Account information
(setq jabber-account-list
      '( ("XXXXXX@chat.facebook.com"
         (:network-server . "chat.facebook.com")
         (:connection-type . network))
        ("XXXXXXX@gmail.com"
         (:connection-type . ssl)
         (:network-server . "talk.google.com")
         (:port 5223))))

;; Do not expire passwords
(setq password-cache-expiry nil)

;; Marks URLs. Mouse-2 or C-c RET to access.
(add-hook 'jabber-chat-mode-hook 'goto-address)

;; Redefine standard binding for sending message form RET to C-RET:
(defun my-jabber-key-bindings ()
  (define-key jabber-chat-mode-map (kbd "RET") 'newline)
  (define-key jabber-chat-mode-map [C-return] 'jabber-chat-buffer-send))

(add-hook 'jabber-chat-mode-hook 'my-jabber-key-bindings)

;; History settings (disabled by default)
(setq jabber-history-enabled t)
(setq jabber-use-global-history nil)
(setq jabber-backlog-number 40)
(setq jabber-backlog-days 30)

;; For debug
(setq jabber-debug-log-xml t)
(setq jabber-debug-keep-process-buffers t)

;; End of file
