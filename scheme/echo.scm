(begin
  (require "lib.scm")

  (define (io_ctrl x)
    (ld_a x)
    (out (lit #x2))
  )
  (define (io_wait_clr x)
    (define wait (label))

    (>> wait) 
    (in (lit #x2))
    (nor x)
    (bz wait)
  )
  (define (io_wait_set x)
    (define wait (label))
    (define done (label))

    (>> wait)
    (in (lit #x2))
    (nor x)
    (bz done)
    (bu wait)
    (>> done)
  )
  (define (io_read x y)
    (in x)
    (ld_c y)
    (st_a_@c)
  )
  (define (io_write x y)
    (ld_c x)
    (ld_a_@c)
    (out y)
  )
  (define (__init)
    (define repeat (label))

    (>> repeat) 

    (io_ctrl (lit #x0))
    (io_wait_set (lit #xd))

    (io_read (lit #x0) (qlit #x0))
    (io_read (lit #x1) (qlit #x1))

    (io_wait_clr (lit #xe))

    (io_write (qlit #x0) (lit #x0))
    (io_write (qlit #x1) (lit #x1))

    (io_ctrl (lit #x1))
    (io_ctrl (lit #x2))

    (bu repeat)
  )
)
