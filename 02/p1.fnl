(var doubles 0)
(var triples 0)

(fn count-chars [str]
  (var tbl {})
  (for [i 1 (string.len str)]
    (var char (string.sub str i i))
    (if (. tbl char)
        (tset tbl char (+ (. tbl char) 1))
        (tset tbl char 1)))
    tbl)

(fn count-dupes [tbl n]
  (var dupes 0)
  (each [key value (pairs tbl)]
    (if (= value n)
        (set dupes (+ dupes 1))))
  dupes)

(each [line (io.lines "input.txt")]
  (var occ (count-chars line))
  (if (> (count-dupes occ 2) 0)
      (set doubles (+ doubles 1)))
  (if (> (count-dupes occ 3) 0)
      (set triples (+ triples 1))))

(print (* doubles triples))
