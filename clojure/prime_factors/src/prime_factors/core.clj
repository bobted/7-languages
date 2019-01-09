(ns prime-factors.core)

;;(defn primes
;;  ([num]
;;    (cond
;;      (< num 2) []
;;      :else [num])))

; (defn primes
;   ([num]
;     (cond
;       (< num 2) []
;       (and (zero? (rem num 2)) (> num 2)) [2, (/ num 2)]
;       :else [num])))

(defn primes 
  ([num] 
    (primes num 2 '()))
  ([num candidate acc]
    (cond (<= num 1) (reverse acc)
          (zero? (rem num candidate)) (recur (/ num candidate) candidate (cons candidate acc))
          :else (recur num (inc candidate) acc))))
