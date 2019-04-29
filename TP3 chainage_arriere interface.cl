(defun beginArriere()
  (let (Taille_de_ecran Marque Performance Nouveau_modele BudgetMax Memoire choix target verifier)
   (format nil "On vous recommande 9 types de telephone: ~%")

    (format t "1 : iPhone Xs Max ~%")
    (format t "2 : Huawei P8 Lite ~%")
    (format t "3 : Xiaomi Redmi Note 5 ~%")
    (format t "4 : Xiaomi Pocophone F1 ~%")
    (format t "5 : Samsung Galaxy J6+ ~%")
    (format t "6 : Samsung Galaxy Xcover 4 ~%")
    (format t "7 : Samsung Galaxy S7 ~%")
    (format t "8 : BlackBerry KEY ~%")
    (format t "9 : iPhone X ~%~%")
   
    (format t "Quel telephone portable pensez-vous choisir? ~%")
    (format t "Votre choix(numero de votre choix) : ")
    
    (setq target (read))
    
    (cond
        ((equal target '1)
        (setq target '(iPhone Xs Max)))
        ((equal target '2)
        (setq target '(Huawei P8 Lite)))
        ((equal target '3)
        (setq target '(Xiaomi Redmi Note 5)))
        ((equal target '4)
        (setq target '(Xiaomi Pocophone F1)))
        ((equal target '5)
        (setq target '(Samsung Galaxy J6+)))
        ((equal target '6)
        (setq target '(Samsung Galaxy Xcover 4)))
        ((equal target '7)
        (setq target '(Samsung Galaxy S7)))
        ((equal target '8)
        (setq target '(BlackBerry KEY)))
        ((equal target '9)
        (setq target '(iPhone X)))
         )
                            
    ;;Stocker le marque qui est correspond a le type de portable qui est choisi par l'utilisateur
    (setq Marque (car target))
    (if (equal 'iphone Marque)
        (push (list 'Marque '= 'APPLE) *BF*)
      (push (list 'Marque '= Marque) *BF*)

     )
         
   (format t "~%Ensuit, entrez votre demande pour votre t¨¦l¨¦hone, s'il vous pla?t: ~%")
    
    ;;Stocker le Budget
    (format t "BudgetMax:")
    (setq BudgetMax (read))
    (push (list 'BudgetMax '= BudgetMax) *BF*)
         
    ;;Stocker le Memoire
    (format t "~%Memoire:")
    (setq Memoire (read))
    (push (list 'Memoire '= Memoire) *BF*)
         
    ;;Constuire le resultat final
    (setq target (append target (list Memoire) '(Go)))
    (setq target (list 'Resultat_final '= target))
    
    (format t "~%1.Taille_de_ecran 2.Performance 3.Nouveau_modele: ")
    (setq choix (read))
    (case choix
      ((1 un Taille_de_ecran)
       (progn
        (format t "~%petit moyen ou grand: ")
        (setq Taille_de_ecran (read))
        (push (list 'Taille_de_ecran '= Taille_de_ecran) *BF*)
        )
       )
      ((2 deux Performance)
       (progn
        (format t "~%bas moyen ou haut: ")
        (setq Performance (read))
        (push (list 'Performance '= Performance) *BF*)
        )
       )
      ((3 trois Nouveau_modele)
       (progn
        (format t "~%Nouveau modele? Y/N ")
        (setq Nouveau_modele (read))
        (case Nouveau_modele
          ((Y T yes Yes oui Oui) (push (list 'Nouveau_modele '= 'T) *BF*))
          ((N nil no No non Non) (push (list 'Nouveau_modele '= 'nil) *BF*))
          )
        )
       )
      )
    (setq verifier (chainagearriere target *BR* *BF*))
    (if (equal verifier nil)
        (format t "~%Le telephone choisi ne correspond pas vos crit¨¨res. Vous pouvez r?essayer. ~%~%")
        (format t "~%Le telephone choisi bien correspond vos crit¨¨res! ~%~%")
      )
    )
    (defparameter *BF* ())
  'Bye
  )
