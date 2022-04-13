(program 1.0.0 
    (force(delay(force 
        [
            (lam x (delay x))
            [[(builtin addInteger) (con integer 10)] (con integer 1) ]
        ]
    )))
)