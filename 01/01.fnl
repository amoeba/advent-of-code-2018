(var freq 0)
(each [val (io.lines "input.txt")]
  (set freq (+ freq (tonumber val))))
(print freq)
