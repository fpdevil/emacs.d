;;; Package --- init.el
;;;
;;; Last Modified:
;;;
;;; Commentary:
;; Emacs init file responsible for either loading a pre-compiled configuration
;; file or tangling and loading a literate org configuration file.
;; Bootstrap the required libraries to enable a literate Emacs configuration
;;

;;; Code:
;;;
;;; Initial boilerplate
(require 'cl-lib)

;; set emacs user directory
(unless (boundp 'user-emacs-directory)
  (defvar user-emacs-directory "~/.emacs.d/"
    "Root directory of the emacs configuration."))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (let ((file-name-handler-alist nil))                                             ;;
;;   ;; If the configuration is pre-compiled, then load that                        ;;
;;   (if (file-exists-p (expand-file-name "config.elc" user-emacs-directory))       ;;
;;       (load-file (expand-file-name "config.elc" user-emacs-directory))           ;;
;;     ;; else load Org-Babel tangled config                                        ;;
;;     (require 'org)                                                               ;;
;;     (org-babel-load-file (expand-file-name "config.org" user-emacs-directory)))) ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; load the config package from the `after-init-hook' so that all packages are loaded
(add-hook 'after-init-hook
          `(lambda ()
             ;; load the org-babel tangled configuration
             (require 'org)
             (org-babel-load-file (expand-file-name "config.org" user-emacs-directory))))

;;; init.el ends here
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
