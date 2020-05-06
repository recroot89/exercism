(ns reverse-string)

(defn reverse-string [string]
  (->> string
    (reverse)
    (apply str)))
