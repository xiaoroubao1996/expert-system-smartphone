(defun beginAvant()
  (let (Taille_de_ecran Marque Performance Nouveau_modele BudgetMax Memoire choix)
    ;;Stocker la marque
    (format t "Marque Apple,Xiaomi,Samsung,BlackBerry ou Huawei : ~%")
    (setq Marque (read))
    (push (list 'Marque '= Marque) *BF*)
    
    ;;Stocker le budget
    (format t "BudgetMax:~%")
    (setq BudgetMax (read))
    (push (list 'BudgetMax '= BudgetMax) *BF*)
    
    ;;Stocker la memoire
    (format t "Memoire:~%")
    (setq Memoire (read))
    (push (list 'Memoire '= Memoire) *BF*)
    
    ;;Choisissez l'un des trois
    (format t "1.Taille_de_ecran 2.Performance 3.Nouveau_modele: ~%")
    (setq choix (read))
    (case choix
      ((1 un Taille_de_ecran)
       (progn
        (format t "petit moyen ou grand: ~%")
        (setq Taille_de_ecran (read))
        (push (list 'Taille_de_ecran '= Taille_de_ecran) *BF*)
        )
       )
      ((2 deux Performance)
       (progn
        (format t "bas moyen ou haut: ~%")
        (setq Performance (read))
        (push (list 'Performance '= Performance) *BF*)
        )
       )
      ((3 trois Nouveau_modele)
       (progn
        (format t "Nouveau modele? Y/N ~%")
        (setq Nouveau_modele (read))
        (case Nouveau_modele
          ((Y T yes Yes oui Oui) (push (list 'Nouveau_modele '= 'T) *BF*))
          ((N nil no No non Non) (push (list 'Nouveau_modele '= 'nil) *BF*))
          )
        )
       )
      )
    (chainageavant)
    )
  )
