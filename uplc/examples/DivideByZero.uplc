(program
  1.0.0
  [
    [
      (builtin remainderInteger)
      [
        (lam
          x0
          [
            (lam
              x2
              [
                (lam
                  x4
                  [ [ (builtin addInteger) (con integer 0) ] (con integer 3) ]
                )
                [
                  [ (builtin lessThanEqualsInteger) (con integer 0) ]
                  (con integer 1)
                ]
              ]
            )
            [
              (lam
                x3
                [
                  [ (builtin appendByteString) (con bytestring #726774) ]
                  (con bytestring #637878)
                ]
              )
              [
                [ (builtin appendByteString) (con bytestring #70627a) ]
                (con bytestring #797663)
              ]
            ]
          ]
        )
        [
          (lam
            x1
            [
              [
                (builtin lessThanInteger)
                [
                  [ (builtin multiplyInteger) (con integer 0) ] (con integer 3)
                ]
              ]
              [ [ (builtin addInteger) (con integer 2) ] (con integer 1) ]
            ]
          )
          [
            [
              (builtin lessThanEqualsInteger)
              [ [ (builtin multiplyInteger) (con integer 2) ] (con integer 3) ]
            ]
            [ [ (builtin addInteger) (con integer 3) ] (con integer 2) ]
          ]
        ]
      ]
    ]
    (con integer 0)
  ]
)