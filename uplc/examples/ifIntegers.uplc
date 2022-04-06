(program
  1.0.0
  [
    [
      [
        (force
          (force
            (delay
              (delay
                (lam
                  f
                  [
                    (force
                      (force
                        (delay
                          (delay
                            (lam
                              f
                              [
                                (force (delay (lam s [ s s ])))
                                (lam
                                  s
                                  (lam
                                    x
                                    [
                                      [
                                        f [ (force (delay (lam s [ s s ]))) s ]
                                      ]
                                      x
                                    ]
                                  )
                                )
                              ]
                            )
                          )
                        )
                      )
                    )
                    (lam
                      rec
                      (lam
                        z
                        (lam
                          xs
                          [
                            [ (force xs) z ]
                            (lam x (lam xs' [ [ rec [ [ f z ] x ] ] xs' ]))
                          ]
                        )
                      )
                    )
                  ]
                )
              )
            )
          )
        )
        (builtin addInteger)
      ]
      (con integer 0)
    ]
    [
      [
        (force (delay (lam x (lam xs (delay (lam z (lam f [ [ f x ] xs ])))))))
        (con integer 1)
      ]
      [
        [
          (force
            (delay (lam x (lam xs (delay (lam z (lam f [ [ f x ] xs ]))))))
          )
          (con integer 1)
        ]
        (force (delay (delay (lam z (lam f z)))))
      ]
    ]
  ]
)
➜  examples git:(master) ✗ clear
➜  examples git:(master) ✗ cabal run uplc example -- -a
Up to date
succInteger
unitval
true
false
churchZero
churchSucc
overapplication
factorial
fibonacci
NatRoundTrip
ScottListSum
IfIntegers
ApplyAdd1
ApplyAdd2
DivideByZero
DivideByZeroDrop
➜  examples git:(master) ✗ cabal run uplc example -- -s IfIntegers
Up to date
(program
  1.0.0
  [
    [
      [
        (force
          (delay
            (lam
              b
              (lam
                x
                (lam
                  y
                  [
                    [ [ [ (force (builtin ifThenElse)) b ] x ] y ] (con unit ())
                  ]
                )
              )
            )
          )
        )
        [
          (lam
            x0
            [
              [
                (builtin equalsInteger)
                [
                  [
                    (builtin subtractInteger)
                    [ [ (builtin addInteger) (con integer 1) ] (con integer 3) ]
                  ]
                  [ [ (builtin addInteger) (con integer 3) ] (con integer 3) ]
                ]
              ]
              [
                [
                  (builtin multiplyInteger)
                  [
                    [ (builtin multiplyInteger) (con integer 1) ]
                    (con integer 3)
                  ]
                ]
                [
                  [ (builtin multiplyInteger) (con integer 3) ] (con integer 3)
                ]
              ]
            ]
          )
          [
            (lam
              x1
              [
                (builtin sha3_256)
                [ (builtin sha3_256) (con bytestring #736b72) ]
              ]
            )
            [
              [
                (builtin addInteger)
                [
                  [ (builtin subtractInteger) (con integer 3) ] (con integer 3)
                ]
              ]
              [ [ (builtin subtractInteger) (con integer 3) ] (con integer 3) ]
            ]
          ]
        ]
      ]
      [
        (force (force (delay (delay (lam x (lam y x))))))
        [
          (lam
            x0
            [
              (lam
                x3
                [
                  [
                    (builtin multiplyInteger)
                    [ [ (builtin addInteger) (con integer 1) ] (con integer 2) ]
                  ]
                  [
                    [ (builtin subtractInteger) (con integer 0) ]
                    (con integer 2)
                  ]
                ]
              )
              [
                [
                  (builtin subtractInteger)
                  [ [ (builtin addInteger) (con integer 3) ] (con integer 0) ]
                ]
                [
                  [ (builtin multiplyInteger) (con integer 1) ] (con integer 1)
                ]
              ]
            ]
          )
          [
            (lam
              x1
              [
                (builtin sha2_256) [ (builtin sha3_256) (con bytestring #6e62) ]
              ]
            )
            [
              (lam
                x2
                [
                  [ (builtin equalsByteString) (con bytestring #6867) ]
                  (con bytestring #676d)
                ]
              )
              [ (builtin sha3_256) (con bytestring #) ]
            ]
          ]
        ]
      ]
    ]
    [
      (force (force (delay (delay (lam x (lam y x))))))
      [
        (lam
          x0
          [
            [
              (builtin multiplyInteger)
              [
                [
                  (builtin multiplyInteger)
                  [
                    [ (builtin multiplyInteger) (con integer 1) ]
                    (con integer 1)
                  ]
                ]
                x0
              ]
            ]
            x0
          ]
        )
        [
          [
            (builtin subtractInteger)
            [
              [
                (builtin addInteger)
                [
                  [ (builtin multiplyInteger) (con integer 1) ] (con integer 3)
                ]
              ]
              [ [ (builtin addInteger) (con integer 3) ] (con integer 3) ]
            ]
          ]
          [
            [
              (builtin subtractInteger)
              [ [ (builtin multiplyInteger) (con integer 2) ] (con integer 3) ]
            ]
            [ [ (builtin subtractInteger) (con integer 2) ] (con integer 2) ]
          ]
        ]
      ]
    ]
  ]
)