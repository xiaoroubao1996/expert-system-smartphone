(defun chainagearriere(But BR BF)
  (let ((ok nil) (regles ()))
   (if (checkBF But BF)
    (setq ok t)
     (progn
       (setq regles (candidature But BR)) ;; Stocker tous les regles candidatures
       (loop
         (if (or ok (null regles))
               (return))
               (setq ok (chainagearriere_et (pop regles) BR BF)
              )
           )
       )
     )
    ok
  )
)


;;Pour verifier si le But est dans le Base de fait
(defun checkBF (But BF)
  (let (ok)
  (dolist (memberBF BF)
        (cond
         ((and (equal (cadr But) '=) (equal But memberBF) (not ok)) (setq ok t))
         ((and (equal (cadr But) '>) (numberp (caddr memberBF)) (< (caddr But) (caddr memberBF)) (not ok)) (setq ok t))          ;;Le case du budget
         )
    )
  ok)
  )


;;Pour savoir ses regles de candidatures
(defun candidature (But BR)
  (let ((l2 ()))
    (dolist (element BR)
      (dolist (subconclusion (conclusion element))
        (cond
         ((and (equal (cadr subconclusion) '=) (equal But subconclusion)) (push element l2))
         ((and (equal (cadr subconclusion) '<) (equal (car But) (car subconclusion)) (< (caddr But) (caddr subconclusion))) (push element l2))  ;;Le case du parution
         )
          ) )
    l2 )
  )

;;Pour trouver la conclusion du regle
(defun conclusion (regle)
  (caddr regle)
  )


(defun chainagearriere_et(regle BR BF)
  (let ((conditions (cadr regle) condition) 
        (ok t))
    (loop
      (if (or (not ok) (null conditions))
       (return nil)
        (progn
          (setq condition (pop conditions))
         (setq ok (chainagearriere condition BR BF))
        ))
      )
    ok 
    )
  )
