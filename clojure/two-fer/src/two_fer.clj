(ns two-fer)

(defn two-fer
  ( [] "One for you, one for me.")
  ( [name] (str "One for " name ", one for me."))
)

; (defn two-fer [& [recipient]]
;   (format "One for %s, one for me." (or recipient "you")))

