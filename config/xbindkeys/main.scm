(define (load-file path) 
  (define home (getenv "HOME")) 
  (define abspath (string-append home "/config/rc/shortcuts/" path)) 
  (load abspath))

(define (for-each func lst) 
  (let loop ((rest lst)) 
    (unless (null? rest) 
	    (func (car rest)) 
	    (loop (cdr rest)))))

(load-file "tile.scm")
(load-file "media.scm")
(load-file "./desktop.scm")
(load-file "./other.scm")
