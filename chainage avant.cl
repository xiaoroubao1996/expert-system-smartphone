
(defun chainageavant () ;; main function
  (let ((BF *BF*))
    (dolist (regle *BR*)
      (if (faitsdansBF (cadr regle))
          (mapcar (lambda (result) (pushnew result *BF* :test 'equal)) (caddr regle)) ;; push tous les resultat de ce regle dans BF.
        )
      )
    (if (equal BF *BF*)
        (affichierResult)
        (chainageavant)
      )
    )
  )

;;Si chacun condition est satisfait dans BF
(defun faitsdansBF (conditions)
  (let ((OK t))
    (dolist (condition conditions)
      (unless (and (faitdansBF condition) OK) ;; tous les conditions doivent etre satisfait.
        (setq OK nil)
        )
      )
    OK
    )
  )

;Si la certain condition est satisfait dans BF
(defun faitdansBF (condition)
  (let ((OK nil)
        (sujet (car condition))
        (operation (cadr condition))
        (objet (caddr condition))
        fait
        )
    (cond
     ((equal operation '=)
      (setq fait (assocbis sujet *BF*))
      (dolist (faitBF fait)
        (cond
         ((and (equal (cadr faitBF) '=) (equal objet (caddr faitBF)) (not OK)) (setq OK t))
         ((and (equal (cadr faitBF) '<) (< objet (caddr faitBF)) (not OK)) (setq OK t))
         )
        )
      )
     ((equal operation '>)
      (setq fait (assoc sujet *BF*))
      (if (and (not OK) (> (caddr fait) objet)) (setq OK t))
      )
     )
    OK
     )
    )
  )

;affichier les resultat
(defun affichierResult ()
  (let ((results (assocbis 'RESULTAT_FINAL *BF*)))
    (if (equal results '())
        (format t "Rien trouv¨¦!~%")
      (dolist (result results)
        (format t "result : ~s~%" (caddr result)))
      )
    )
  (vider)
  )

;assocbis de TP1
(defun assocBis (cle a-liste)
  (if (equal (length a-liste) 0) NIL
    (append (if (equal (car (car a-liste)) cle) (list (car a-liste)) NIL) (assocBis cle (cdr a-liste))) ;; D¨¦tecter dans l¡¯ordre les premiers dans les sous-listes. S¡¯il est ¨¦gale de cl¨¦ pr¨¦cis¨¦ en argument, on sort la recursion.
    )
  )

;affichier bf
(defun show ()
  (dolist (xx *BF*)
    (format t "~s ~s ~s ~%" (car xx) (cadr xx) (caddr xx))
    )
  )

; vider bf
(defun vider ()
(while (not (equal *BF* ()))
  (pop *BF*)))

