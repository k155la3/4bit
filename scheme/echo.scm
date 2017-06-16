(begin
  (require "lib.scm")

  (define (io_ctrl x)
    (ld_a x)
    (out (lit #x2))
  )
  (define (io_wait x)
    (define wait (label))

    (>> wait) 
    (in (lit #x2))
    (nor x)
    (bz wait)
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

    (io_ctrl (lit #x2))
    (io_wait (lit #xd))
    (io_ctrl (lit #x0))

    (nop)
    (nop)
    (nop)
    (nop)

    (io_read (lit #x0) (qlit #x0))
    (io_read (lit #x1) (qlit #x1))

    (io_wait (lit #xe))
    (io_ctrl (lit #x1))

    (io_write (qlit #x0) (lit #x0))
    (io_write (qlit #x1) (lit #x1))

    (nop)
    (nop)
    (nop)
    (nop)

    (io_ctrl (lit #x0))
    (bu repeat)
  )
)
