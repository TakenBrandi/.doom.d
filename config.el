;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; idk why, but I like to group my settings and config into use-package!s

(use-package! emacs
  :custom
  (user-full-name "Brandi Bateman")
  (user-mail-address "takenbrandi@gmail.com")
  (doom-theme 'doom-moonlight)
  (display-line-numbers-type 'relative)
  :config
  (add-to-list 'default-frame-alist '(fullscreen . maximized))
  (cond (IS-MAC
         (setq mac-mouse-wheel-smooth-scroll t))))

(use-package! doom

  :custom
  (doom-theme 'doom-zenburn)
  ;; Doom exposes five (optional) variables for controlling fonts in Doom:
  ;;
  ;; - `doom-font' -- the primary font to use
  ;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
  ;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
  ;;   presentations or streaming.
  ;; - `doom-unicode-font' -- for unicode glyphs
  ;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
  (doom-font (font-spec :family "Fira Code" :size 14 :weight 'semibold))
  (doom-variable-pitch-font (font-spec :family "DejaVu Sans" :size 14.5))
  (doom-big-font (font-spec :family "DejaVu Sans" :size 24))
  :bind
  (:map evil-insert-state-map
   ;; I don't use C-k for glyphs, but I hit it everytime I want to kill line, soo...
   ("C-k" . kill-line)))

(use-package! org
  :defer
  :custom
  (org-directory "~/org/"))

(use-package! haskell
  :config
  (add-to-list 'evil-emacs-state-modes 'haskell-error-mode))

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
