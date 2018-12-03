(var freq 0)
(var tbl { :0 1 })

(while true
  (each [val (io.lines "input.txt")]
    (set freq (+ freq (tonumber val)))
    (if (. tbl freq) (error (.. "saw " freq " a second time")))
    (tset tbl freq -1)))
