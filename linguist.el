;;; linguist.el --- A language modes pack for Emacs

;; URL: https://github.com/jeffkreeftmeijer/linguist.el
;; Package-Requires: (use-package dockerfile-mode elixir-mode git-modes ledger-mode markdown-mode nix-mode yaml-mode)

;;; Commentary:

;; linguist.el is a language pack for Emacs that uses use-package's
;; deferred loading features to load language modes when needed.

;;; Code:

(defun linguist--loaded-message (mode)
  "Print a message when a MODE is loaded."
  (message (concat "Linguist: Loaded " mode ".")))

(use-package beancount-mode
  :config (linguist--loaded-message "beancount-mode")
  :ensure t
  :mode ("\\.beancount\\'" . beancount-mode)

(use-package dockerfile-mode
  :config (linguist--loaded-message "dockerfile-mode")
  :ensure t
  :mode ("\\.dockerfile\\'" . dockerfile-mode)
  :mode ("[/\\]\\(?:Containerfile\\|Dockerfile\\)\\(?:\\.[^/\\]*\\)?\\'" . dockerfile-mode))

(use-package elixir-mode
  :config (linguist--loaded-message "elixir-mode")
  :ensure t
  :mode ("mix\\.lock" . elixir-mode)
  :mode ("\\.exs\\'" . elixir-mode)
  :mode ("\\.ex\\'" . elixir-mode)
  :mode ("\\.elixir\\'" . elixir-mode))

(use-package git-modes
  :config (linguist--loaded-message "gitattributes-mode")
  :ensure t
  :mode ("/git/attributes\\'" . gitattributes-mode)
  :mode ("/info/attributes\\'" . gitattributes-mode)
  :mode ("/\\.gitattributes\\'" . gitattributes-mode))

(use-package git-modes
  :config (linguist--loaded-message "gitconfig-mode")
  :ensure t
  :mode ("/etc/gitconfig\\'" . gitconfig-mode)
  :mode ("/\\.gitmodules\\'" . gitconfig-mode)
  :mode ("/git/config\\'" . gitconfig-mode)
  :mode ("/modules/.*/config\\'" . gitconfig-mode)
  :mode ("/\\.git/config\\'" . gitconfig-mode)
  :mode ("/\\.gitconfig\\'" . gitconfig-mode))

(use-package git-modes
  :config (linguist--loaded-message "gitignore-mode")
  :ensure t
  :mode ("/git/ignore\\'" . gitignore-mode)
  :mode ("/info/exclude\\'" . gitignore-mode)
  :mode ("/\\.gitignore\\'" . gitignore-mode))

(use-package ledger-mode
  :config (linguist--loaded-message "ledger-mode")
  :ensure t
  :mode ("\\.ledger\\'" . ledger-mode))

(use-package markdown-mode
  :config (linguist--loaded-message "markdown-mode")
  :ensure t
  :mode ("\\.\\(?:md\\|markdown\\|mkd\\|mdown\\|mkdn\\|mdwn\\)\\'" . markdown-mode)
  :mode ("\\.mdx\\'" . markdown-mode))

(use-package nix-mode
  :config (linguist--loaded-message "nix-mode")
  :ensure t
  :mode ("\\.nix\\'" . nix-mode)
  :mode ("^/nix/store/.+\\.drv\\'" . nix-drv-mode))

(use-package yaml-mode
  :config (linguist--loaded-message "yaml-mode")
  :ensure t
  :mode ("\\.\\(e?ya?\\|ra\\)ml\\'" . yaml-mode))

(provide 'linguist)

;;; linguist.el ends here
