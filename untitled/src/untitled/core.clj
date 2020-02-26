(ns untitled.core)
(require clojure.string :refer :all)
(defn foo
  "I don't do a whole lot."
  [x]
  (println x "Hello, World!"))

(defn is-valid-string [string alphabets final-states states intial-state traversing-table]
  (every? (partial contains? alphabets) (split string #""))
  )



