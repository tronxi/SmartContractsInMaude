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
            [
              (builtin multiplyInteger)
              [
                [
                  (builtin subtractInteger)
                  [ [ (builtin addInteger) (con integer 0) ] (con integer 2) ]
                ]
                [
                  [ (builtin subtractInteger) (con integer 0) ] (con integer 0)
                ]
              ]
            ]
            [
              [
                (builtin subtractInteger)
                [ [ (builtin addInteger) (con integer 0) ] (con integer 2) ]
              ]
              [ [ (builtin addInteger) (con integer 2) ] (con integer 1) ]
            ]
          ]
        )
        [
          (builtin sha2_256)
          [
            [
              (builtin appendByteString)
              [ (builtin sha3_256) (con bytestring #74) ]
            ]
            [ (builtin sha2_256) (con bytestring #737775) ]
          ]
        ]
      ]
    ]
    [
      (lam
        x0
        [
          (lam
            x4
            [
              [
                (builtin addInteger)
                [ [ (builtin addInteger) (con integer 3) ] (con integer 2) ]
              ]
              [ [ (builtin addInteger) (con integer 3) ] (con integer 0) ]
            ]
          )
          [ (builtin sha2_256) [ (builtin sha3_256) (con bytestring #7a79) ] ]
        ]
      )
      [
        (lam
          x1
          [
            (lam x3 [ (builtin sha2_256) (con bytestring #67) ])
            [
              [ (builtin appendByteString) (con bytestring #6f77) ]
              (con bytestring #69)
            ]
          ]
        )
        [
          (lam x2 [ (builtin sha3_256) (con bytestring #) ])
          [
            [ (builtin equalsByteString) (con bytestring #6576) ]
            (con bytestring #707a)
          ]
        ]
      ]
    ]
  ]
)