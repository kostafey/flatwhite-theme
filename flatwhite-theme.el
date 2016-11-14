;;; flatwhite-theme.el

;; This file is not [yet] part of GNU Emacs, but is distributed under
;; the same terms.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 2 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; (load-theme 'flatwhite t)

;;; Code:

(deftheme flatwhite
  "Minimal light syntax theme. 5 colored backgrounds used for code highlighting.")

(let* ((class '((class color) (min-colors 89)))

       (flatwhite-fg "#605B53")
       (flatwhite-bg "#F7F3EE")
       (flatwhite-cursor-fg "#999795")

       (flatwhite-bg-orange "#FAE3C4") ;#F9E3C6
       (flatwhite-bg-purple "#F1DDF2") ;#F1DDF2
       (flatwhite-bg-blue "#DDE4F3") ;#DDE4F2
       (flatwhite-bg-teal "#D1EBE3") ;#D2EBE3
       (flatwhite-bg-green "#E2EABF") ;#E2E9C1

       (flatwhite-syntax-fg2 "#867A69")
       (flatwhite-syntax-fg3 "#AD9C84")
       
       (flatwhite-comment-fg flatwhite-syntax-fg3)       
       
       (flatwhite-syntax-selection "#E2DCD4")
       )

  (custom-theme-set-faces
   'flatwhite
   `(default ((,class (:foreground ,flatwhite-fg :background ,flatwhite-bg))))
   `(cursor ((,class (:background ,flatwhite-cursor-fg))))
   `(mode-line-default-face ((,class (:foreground ,flatwhite-fg))))

   ;; Highlighting faces
   `(fringe ((,class (:background "#D5D5D5" :foreground ,flatwhite-fg))))
   `(highlight ((,class (:background ,flatwhite-bg))))
   `(region ((,class (:background ,flatwhite-syntax-selection))))
  
   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:foreground ,flatwhite-fg :background ,flatwhite-bg-blue))))
   `(error ((,class (:background ,flatwhite-bg-purple))))
   `(warning ((,class (:background ,flatwhite-bg-orange))))
   `(success ((,class (:background ,flatwhite-bg-green))))

  ;;  ;; Font lock faces
   `(font-lock-builtin-face ((,class (:background ,flatwhite-bg-blue))))
   `(font-lock-comment-face ((,class (:foreground ,flatwhite-comment-fg :italic t))))
   `(font-lock-constant-face ((,class (:background ,flatwhite-bg-teal))))
   `(font-lock-function-name-face ((,class (:background ,flatwhite-bg))))
   `(font-lock-keyword-face ((,class (:background ,flatwhite-bg-purple))))
   `(font-lock-string-face ((,class (:background ,flatwhite-bg-green))))
   `(font-lock-type-face ((,class (:background ,flatwhite-bg-orange))))
   `(font-lock-variable-name-face ((,class (:background ,flatwhite-bg))))
   `(font-lock-warning-face ((,class (:background ,flatwhite-bg-orange))))
   

  ;;  ;;Highlight pair parentheses
   `(show-paren-match ((t (:background "#F5F4AF"))))
  ;;  `(show-paren-mismatch ((t (:background ,minor-red-highlight-background))))

  ;;  ;; rainbow-delimiters
  ;;  ;; (1 (2 (3 (4 (5 (6 (7 (8 (9 (10 (11 (12))))))))))))
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,flatwhite-fg :background ,flatwhite-bg))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,flatwhite-fg :background ,flatwhite-bg-purple))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,flatwhite-fg :background ,flatwhite-bg-orange))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,flatwhite-fg :background ,flatwhite-bg-green))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,flatwhite-fg :background ,flatwhite-bg-teal))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,flatwhite-fg :background ,flatwhite-bg-blue))))
   ))

(custom-theme-set-variables
 'flatwhite
 ;; fill-column-indicator
 `(fci-rule-color "gray80"))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'flatwhite)

;;; flatwhite-theme.el ends here
