;;; kaolin-TODO-theme.el --- TODO
;;; Commentary:

;;; Code:
(require 'kaolin-themes)

(define-kaolin-theme new  "TODO"

  ;; Palette modification
  (
   ;; Colors
   (spring-green6 "#3e594e")
   (aquamarine4   "#518270")
   (orange3       "#f5c791")
   (teal0         "#0E9E97")

   ;; Color vars
   (bg1 black3)
   (bg2 black4)
   (bg3 gray0)
   (bg4 gray1)

   (fg1 amber9)

   ;; (keyword     red3)
   ;; (keyword     crimson1)
   (keyword     crimson1)
   (second-key  keyword)
   ;; (builtin     cyan0)
   (builtin     cerulean4)

   ;; (var         magenta3)
   (var         magenta3)
   (const       pink3)
   ;; (functions   aquamarine3)
   (functions   ultramarine3)
   ;; TODO: mb swap with prep color
   ;; (type        ultramarine3)
   ;; (type        aquamarine3)
   (type        spring-green3)
   ;; (type        cyan0)

   (comment     azure7)
   (comment-alt vermilion7)

   (str         capri4)
   (str-alt     azure4)
   (doc         str-alt)

   (prep        orange3)
   (num         amber3)
   (bool        num)
   (warning     orange1)
   (err         red3)

   (dim-buffer white0)
   (hl         amber0)
   ;; TODO: add colored
   (hl-line    (if kaolin-themes-hl-line-colored bg3 bg3))
   (hl-indent  gray0)
   ;; TODO:
   (selection bg4)
   ;; TODO:
   (pulse bg4)

   (todo red3)

   (tooltip-hl-bg bg3)
   (tooltip-hl-fg hl)

    ;; TODO:
   (rb1 teal1)
   (rb2 aquamarine1)
   (rb3 violet4)
   (rb4 ultramarine4)
   (rb5 vermilion4)
   (rb6 brown3)
   (rb7 capri4)
   (rb8 magenta3)
   (rb9 yellow3)

   (diff-add spring-green3)
   (diff-mod vermilion3)
   (diff-rem red3)

    ;; Mode-line
   (line-fg           fg4)
   (line-color1       functions)
   (line-color2       str)
   (line-bg1          bg2)
   (line-bg2          bg3)
   (line-border       bg3)

   ;; Telephone-line
   (segment-active    gray2)
   (segment-inactive  gray2)
   (evil-normal       brown3)
   (evil-insert       harlequin3)
   (evil-visual       orange3)
   (evil-replace      red3)
   (evil-motion       amber3)
   (evil-operator     evil-normal)
   (evil-emacs        cyan3)

   (win-border    bg3)
   (line-num-fg   azure7)
   (line-num-hl   hl)

   (cursor        fg1)

   ;; TODO:
   (ivy1          gray9)
   (ivy2          cerulean3)
   (ivy3          yellow0)
   (ivy4          red3))

  (
   (highlight-quoted-quote   (:foreground orange3))
   (highlight-quoted-symbol  (:foreground amber3))

   (org-document-title     (:foreground orange3 :bold bold))
   ;; (org-document-info      (:foreground brown3))

   (org-level-1            (:foreground var :bold bold :height 1.1))
   (org-level-2            (:foreground functions  :bold nil))
   (org-level-3            (:foreground str :bold nil))
   (org-level-4            (:foreground num :bold nil)))

  (when kaolin-themes-git-gutter-solid
    (custom-theme-set-faces
     'kaolin-new
     `(git-gutter:added     ((t (:background ,diff-add :foreground ,diff-add))))
     `(git-gutter:modified  ((t (:background ,diff-mod :foreground ,diff-mod))))
     `(git-gutter:deleted   ((t (:background ,diff-rem :foreground ,diff-rem)))))))

;;; kaolin-TODO-theme.el ends here
