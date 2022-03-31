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
              (lam
                x3
                [
                  [
                    (builtin equalsInteger)
                    [
                      [ (builtin multiplyInteger) (con integer 2) ]
                      (con integer 1)
                    ]
                  ]
                  x0
                ]
              )
              [ (builtin sha2_256) [ (builtin sha3_256) (con bytestring #) ] ]
            ]
          )
          [
            (lam
              x1
              [
                [
                  (builtin subtractInteger)
                  [ [ (builtin addInteger) (con integer 0) ] (con integer 3) ]
                ]
                [ [ (builtin addInteger) (con integer 2) ] (con integer 3) ]
              ]
            )
            [
              (lam x2 x2)
              [ [ (builtin equalsInteger) (con integer 0) ] (con integer 2) ]
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
                x2
                [
                  [
                    (builtin addInteger)
                    [
                      [ (builtin multiplyInteger) (con integer 2) ]
                      (con integer 3)
                    ]
                  ]
                  [
                    [ (builtin multiplyInteger) (con integer 3) ]
                    (con integer 3)
                  ]
                ]
              )
              [
                [
                  (builtin lessThanEqualsInteger)
                  [
                    [ (builtin multiplyInteger) (con integer 0) ]
                    (con integer 1)
                  ]
                ]
                [ [ (builtin addInteger) (con integer 1) ] (con integer 3) ]
              ]
            ]
          )
          [
            [
              (builtin lessThanInteger)
              [
                [
                  (builtin addInteger)
                  [ [ (builtin addInteger) (con integer 0) ] (con integer 0) ]
                ]
                [
                  [ (builtin multiplyInteger) (con integer 0) ] (con integer 3)
                ]
              ]
            ]
            [
              (lam
                x1
                [
                  [ (builtin multiplyInteger) (con integer 2) ] (con integer 3)
                ]
              )
              [
                [ (builtin lessThanEqualsInteger) (con integer 3) ]
                (con integer 1)
              ]
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
            (lam
              x1
              [
                (lam
                  x2
                  [ [ (builtin addInteger) (con integer 3) ] (con integer 3) ]
                )
                x0
              ]
            )
            [
              [ (builtin equalsInteger) x0 ]
              [ [ (builtin multiplyInteger) (con integer 1) ] (con integer 0) ]
            ]
          ]
        )
        [
          [
            (builtin addInteger)
            [
              [
                (builtin multiplyInteger)
                [
                  [ (builtin subtractInteger) (con integer 3) ] (con integer 1)
                ]
              ]
              [ [ (builtin multiplyInteger) (con integer 3) ] (con integer 0) ]
            ]
          ]
          [
            [
              (builtin multiplyInteger)
              [ [ (builtin subtractInteger) (con integer 1) ] (con integer 0) ]
            ]
            [ [ (builtin subtractInteger) (con integer 2) ] (con integer 2) ]
          ]
        ]
      ]
    ]
  ]
)
