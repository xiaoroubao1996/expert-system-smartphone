
(defun initial ()
  (if (boundp '*BF*) (setf *BF* '()) (defvar *BF* '()))
  (defvar *BR* '(

(R1 ((Taille_de_ecran = grand))
((Diagonale_ecran = 6.5) (Diagonale_ecran = 6.18) (Diagonale_ecran = 5.99) (Diagonale_ecran = 5.8))
)
(R2 ((Taille_de_ecran = moyen)) ((Diagonale_ecran = 5.6) (Diagonale_ecran = 5.2) (Diagonale_ecran = 5.1))
)
(R3 ((Taille_de_ecran = petit))
((Diagonale_ecran = 4.8) (Diagonale_ecran = 4.5))
)


(R4 ((Performance = haut)) ((CPU = (Kirin 845)) (CPU = (Kirin 820)) (CPU = (A11)) (CPU = (A12))))
(R5 ((Performance = moyen)) ((CPU = (Kirin 655)) (CPU = (Kirin 636)) (CPU = (Kirin 660)) (CPU=(Exynos 7570))))
(R6 ((Performance = bas)) ((CPU = (Kirin 425))))


(R7 ((Nouveau_modele = T)) ((Parution = 2018)))
(R8 ((Nouveau_modele = nil)) ((Parution < 2018)))



(R9 ((Marque = Apple) (Diagonale_ecran = 6.5)) ((Phone = (iPhone Xs Max))))
(R10 ((Marque = Apple) (CPU = (A12))) ((Phone = (iPhone Xs Max))))
(R11 ((Marque = Apple)  (Parution = 2018)) ((Phone = (iPhone Xs Max))))

(R12 ((Marque = Apple) (Diagonale_ecran = 5.8)) ((Phone = (iPhone X))))
(R13 ((Marque = Apple) (CPU = (A11))) ((Phone = (iPhone X))))
(R14 ((Marque = Apple) (Parution = 2017)) ((Phone = (iPhone X))))

(R15 ((Marque = Huawei) (Diagonale_ecran = 5.2)) ((Phone = (Huawei P8 Lite))))
(R16 ((Marque = Huawei) (CPU = (Kirin 655))) ((Phone = (Huawei P8 Lite))))
(R17 ((Marque = Huawei) (Parution = 2017)) ((Phone = (Huawei P8 Lite))))

(R18 ((Marque = Xiaomi) (Diagonale_ecran = 5.99)) ((Phone = (Xiaomi Redmi Note 5))))
(R19 ((Marque = Xiaomi) (CPU = (Kirin 636))) ((Phone = (Xiaomi Redmi Note 5))))
(R20 ((Marque = Xiaomi) (Parution = 2018)) ((Phone = (Xiaomi Redmi Note 5))))

(R21 ((Marque = Xiaomi) (Diagonale_ecran = 6.18)) ((Phone = (Xiaomi Pocophone F1))))
(R22 ((Marque = Xiaomi) (CPU = (Kirin 845))) ((Phone = (Xiaomi Pocophone F1))))
(R23 ((Marque = Xiaomi) (Parution = 2018)) ((Phone = (Xiaomi Pocophone F1))))

(R24 ((Marque = Samsung) (Diagonale_ecran = 5.6)) ((Phone = (Samsung Galaxy J6+))))
(R25 ((Marque = Samsung) (CPU = (Kirin 425))) ((Phone = (Samsung Galaxy J6+))))
(R26 ((Marque = Samsung) (Parution = 2018)) ((Phone = (Samsung Galaxy J6+))))

(R27 ((Marque = Samsung) (Diagonale_ecran = 4.8)) ((Phone = (Samsung Galaxy Xcover 4))))
(R28 ((Marque = Samsung) (CPU = (Exynos 7570))) ((Phone = (Samsung Galaxy Xcover 4))))
(R29 ((Marque = Samsung) (Parution = 2017)) ((Phone = (Samsung Galaxy Xcover 4))))

(R30 ((Marque = Samsung) (Diagonale_ecran = 5.1)) ((Phone = (Samsung Galaxy S7))))
(R31 ((Marque = Samsung) (CPU = (Kirin 820))) ((Phone = (Samsung Galaxy S7))))
(R32 ((Marque = Samsung) (Parution = 2016)) ((Phone = (Samsung Galaxy S7))))

(R33 ((Marque = BlackBerry) (Diagonale_ecran = 4.5)) ((Phone = (BlackBerry KEY))))
(R34 ((Marque = BlackBerry) (CPU = (Kirin 660))) ((Phone = (BlackBerry KEY))))
(R35 ((Marque = BlackBerry) (Parution = 2018)) ((Phone = (BlackBerry KEY))))


(R36 ((Phone = (iPhone Xs Max)) (Memoire = 64) (BudgetMax > 1259.95)) ((Resultat_final = (iPhone Xs Max 64 Go))))
(R37 ((Phone = (iPhone Xs Max)) (Memoire = 256) (BudgetMax > 1429.95)) ((Resultat_final = (iPhone Xs Max 256 Go))))
(R38 ((Phone = (iPhone Xs Max)) (Memoire = 512) (BudgetMax > 1659.95)) ((Resultat_final = (iPhone Xs Max 512 Go))))

(R39 ((Phone = (iPhone X)) (Memoire = 64) (BudgetMax > 1159.95)) ((Resultat_final = (iPhone X 64 Go))))
(R40 ((Phone = (iPhone X)) (Memoire = 256) (BudgetMax > 1329.95)) ((Resultat_final = (iPhone X 256 Go))))
(R41 ((Phone = (iPhone X)) (Memoire = 512) (BudgetMax > 1559.95)) ((Resultat_final = (iPhone X 512 Go))))


(R42 ((Phone = (Huawei P8 Lite)) (Memoire = 16) (BudgetMax > 149.94)) ((Resultat_final = (Huawei P8 Lite 16 Go))))


(R43 ((Phone = (Xiaomi Redmi Note 5)) (Memoire = 32) (BudgetMax > 199.96)) ((Resultat_final = (Xiaomi Redmi Note 5 32 Go))))
(R44 ((Phone = (Xiaomi Redmi Note 5)) (Memoire = 64) (BudgetMax > 249.95)) ((Resultat_final = (Xiaomi Redmi Note 5 64 Go))))

(R45 ((Phone = (Xiaomi Pocophone F1)) (Memoire = 64) (BudgetMax > 359.95)) ((Resultat_final = (Xiaomi Pocophone F1 64 Go))))
(R46 ((Phone = (Xiaomi Pocophone F1)) (Memoire = 128) (BudgetMax > 399.95)) ((Resultat_final = (Xiaomi Pocophone F1 128 Go))))


(R47 ((Phone = (Samsung Galaxy J6+)) (Memoire = 32) (BudgetMax > 229.95)) ((Resultat_final = (Samsung Galaxy J6+ 32 Go))))


(R48 ((Phone = (Samsung Galaxy Xcover 4)) (Memoire = 16) (BudgetMax > 249.95)) ((Resultat_final = (Samsung Galaxy Xcover 4 16 Go))))

(R49 ((Phone = (Samsung Galaxy S7)) (Memoire = 32) (BudgetMax > 449.95)) ((Resultat_final = (Samsung Galaxy S7 32 Go))))

(R50 ((Phone = (BlackBerry KEY)) (Memoire = 32) (BudgetMax > 399.95)) ((Resultat_final = (BlackBerry KEY 32 Go))))
(R51 ((Phone = (BlackBerry KEY)) (Memoire = 128) (BudgetMax > 699.95)) ((Resultat_final = (BlackBerry KEY 128 Go))))
)
)

 )

