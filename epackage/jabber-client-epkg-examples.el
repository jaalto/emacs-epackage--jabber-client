;; Prevent loading this file
(error "jabber-client-epkg-examples.el is not a config file.")

(setq jabber-account-list
      '( ("XXXXXX@chat.facebook.com"
         (:network-server . "chat.facebook.com")
         (:connection-type . network))
        ("XXXXXXX@gmail.com"
         (:connection-type . ssl)
         (:network-server . "talk.google.com")
         (:port 5223))))

(setq jabber-keepalive-interval

;; Do not expire passwords
(setq password-cache-expiry nil)

;; End of file
