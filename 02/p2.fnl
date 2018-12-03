(fn count-diffs [a b]
  (var count 0)
  (for [i 1 (string.len a)]
    (var ca (string.sub a i i))
    (var cb (string.sub b i i))
    (if (~= ca cb)
        (set count (+ count 1))))
    count)

(fn in-common [a b]
  (var common "")
  (for [i 1 (string.len a)]
    (var ca (string.sub a i i))
    (var cb (string.sub b i i))
    (if (= ca cb)
        (set common (.. common ca))))
    common)

(each [line1 (io.lines "input.txt")]
  (each [line2 (io.lines "input.txt")]
    (var diffs (count-diffs line1 line2))
    (if (= diffs 1)
        (print "lines are " line1 line2 "in common is " (in-common line1 line2)))))

