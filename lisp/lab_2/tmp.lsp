; (defun f1 (x y z) (cond  ((and (< x y) (< y z)) T)
;                         ((and (< z y) (< y x)) T)
;                         (T Nil)))

; (defun f2 (x y z) (if   (< x y) 
;                         (if (< y z) T) 
;                         (if (< z y) T)
; ))

; (defun f3 (x y z) (cond     ( (< x y) (cond ( (< y z) T)) )
;                             ( (> x y) (cond ( (< z y) T)) )
; ))

; (defun f4 (x y z) (or  (and (< x y) (< y z))
;                         (and (< z y) (< y x))
;                         ))

; (format t "~a~%" (f3 20 10 1))
; (format t "~a~%" (f3 20 10 15))
; (format t "~a~%" (f3 20 10 150))

; (format t "~a~%" (f3 10 20 1))
; (format t "~a~%" (f3 10 20 15))
; (format t "~a~%" (f3 10 20 150))


; (defun how_alike (x y)
;   (cond ((or (= x y) (equal x y)) 'the-same)
;         ((and (oddp x) (oddp y)) 'both-odd)
;         ((and (evenp x) (evenp y)) 'both-even)
;         (t 'difference)))

; (defun how_alike (x y) 
;     (if (equalp x y) 
;         'the-same 
;         (if (oddp x) 
;             (if (oddp y) 
;                 'both-odd
;                 'difference)
;             (if (evenp y) 
;                 'both-even
;                 'difference)))
; )


; (defun how_alike (x y) 
;     (or 
;     (and (equalp x y) 'the-same)
;     (and (oddp x) (oddp y) 'both-odd)
;     (and (evenp x) (evenp y) 'both-even)
;     'difference
;     )
    
; )
; (format t "~a~%" (how_alike 2 2))
; (format t "~a~%" (how_alike 1 2))
; (format t "~a~%" (how_alike 2 1))
; (format t "~a~%" (how_alike 1 3))
; (format t "~a~%" (how_alike 2 4))


; функция получает 2 списка по 3 элемента, 
; надо вернуть новый список, где по убыванию 
; расположены значения: min1^2 + min2^2, sr1 + sr2, max1 - max2, где min1 - 
; минимальный элемент из первого списка и тд

; (defun f (x y)
;     (sort 
;         (list   (+  (* (apply #' min x) (apply #' min x))
;                     (* (apply #' min y) (apply #' min y)))
;                 (+ (/ (apply #' + (append x y)) 3))
;                 (- (apply #' max x) (apply #' max y))) 
;         #' <))

; (defun f2 (x y)
;     (sort 
;         (list   (+  (* (min x) (min x))
;                     (* (min y) (min y)))
;                 (+ (/ (+ (append x y)) 3))
;                 (- (max x) (max y))) 
;         #' <))


; (defun f3 (x y) (* (min x) (min y)))


; (format t "~a~%" (f3 '(1 2 3) '(4 5 6)))


(defun f3 (x y z) (cond    ( (< x y) (cond ( (< y z) T)) )
                            ( (> x y) (cond ( (< z y) T)) )
))

(defun max_of_four (a b c d)
    (cond   (   (>= a b)
                (cond   (   (>= a c)
                            (cond   ((>= a d) a)
                                    (t d)
                            )
                        ) ; d больше a
                        (t c)
                )
            ) ; c больше a
            (   (>= b c)
                (cond ( (>= b d) b)
                        (t d)
                )
            ) ; d больше b
            ((>= c d) c) ; c больше d
            (t d)
    )
) ;
(format t "~a~%" (max_of_four 1 2 3 5))


(defun f (a b c d)
    (cond ((>= ())))

)





(defun max_of_four (a b c d)
  (cond ((>= a b)
         (cond ((>= a c)
                (cond ((>= a d) a)
                      (t d))) ; d больше a
               (t c))
        ) ; c больше a
        ((>= b c)
         (cond ((>= b d) b)
               (t d))) ; d больше b
        ((>= c d) c) ; c больше d
        (t d)
        )) ;
; (format t "~a~%" (max_of_four 1 5 3 4))


; (format t "~a~%" (max 1 2 3 4))




