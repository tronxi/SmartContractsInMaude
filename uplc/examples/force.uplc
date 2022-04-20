(program 1.0.0 
    (force(delay(force 
        [
            (lam x (delay x))
            [(lam x x) (con integer 2) ]
        ]
    )))
)