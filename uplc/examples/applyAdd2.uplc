(program
  1.0.0
  [
    [
      [
        (force (force (delay (delay (lam f (lam x [ f x ]))))))
        (builtin addInteger)
      ]
      [
        (lam
          x0
          [
            (lam
              x2
              [
                [ (builtin subtractInteger) x2 ]
                [
                  [ (builtin multiplyInteger) (con integer 1) ] (con integer 1)
                ]
              ]
            )
            [
              [
                (builtin multiplyInteger)
                [
                  [ (builtin multiplyInteger) (con integer 1) ] (con integer 3)
                ]
              ]
              [ [ (builtin addInteger) (con integer 0) ] (con integer 3) ]
            ]
          ]
        )
        [
          (lam
            x1
            [
              [ (builtin appendByteString) x1 ]
              [
                [ (builtin appendByteString) (con bytestring #6a617a) ]
                (con bytestring #)
              ]
            ]
          )
          [ (builtin sha2_256) [ (builtin sha3_256) (con bytestring #6f7261) ] ]
        ]
      ]
    ]
    [
      (lam
        x0
        [
          [
            (builtin subtractInteger)
            [
              (lam
                x2
                [
                  [ (builtin multiplyInteger) (con integer 2) ] (con integer 3)
                ]
              )
              [
                [ (builtin appendByteString) (con bytestring #6d6e6e) ]
                (con bytestring #7a776f)
              ]
            ]
          ]
          [
            (lam
              x3
              [ [ (builtin subtractInteger) (con integer 0) ] (con integer 3) ]
            )
            [ [ (builtin subtractInteger) (con integer 0) ] (con integer 1) ]
          ]
        ]
      )
      [
        [
          (builtin lessThanInteger)
          [
            (lam
              x1 [ [ (builtin addInteger) (con integer 2) ] (con integer 3) ]
            )
            [ (builtin sha2_256) (con bytestring #647373) ]
          ]
        ]
        [
          [
            (builtin subtractInteger)
            [ [ (builtin multiplyInteger) (con integer 1) ] (con integer 3) ]
          ]
          [ [ (builtin subtractInteger) (con integer 0) ] (con integer 1) ]
        ]
      ]
    ]
  ]
)
