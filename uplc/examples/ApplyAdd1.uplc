(program
  1.0.0
  [
    [
      (force (force (delay (delay (lam f (lam x [ f x ]))))))
      [
        (builtin addInteger)
        [
          (lam
            x0
            [
              (lam x1 x0)
              [
                [ (builtin lessThanInteger) x0 ]
                [
                  [ (builtin subtractInteger) (con integer 0) ] (con integer 1)
                ]
              ]
            ]
          )
          [
            [
              (builtin subtractInteger)
              [
                [
                  (builtin subtractInteger)
                  [
                    [ (builtin multiplyInteger) (con integer 1) ]
                    (con integer 3)
                  ]
                ]
                [ [ (builtin addInteger) (con integer 1) ] (con integer 1) ]
              ]
            ]
            [
              [
                (builtin addInteger)
                [ [ (builtin addInteger) (con integer 2) ] (con integer 1) ]
              ]
              [ [ (builtin subtractInteger) (con integer 1) ] (con integer 0) ]
            ]
          ]
        ]
      ]
    ]
    [
      (lam
        x0
        [
          [
            (builtin addInteger)
            [
              [
                (builtin multiplyInteger)
                [
                  [ (builtin subtractInteger) (con integer 1) ] (con integer 2)
                ]
              ]
              [ [ (builtin addInteger) (con integer 1) ] (con integer 2) ]
            ]
          ]
          [
            (lam
              x1
              [ [ (builtin subtractInteger) (con integer 3) ] (con integer 2) ]
            )
            [ [ (builtin lessThanInteger) (con integer 0) ] (con integer 3) ]
          ]
        ]
      )
      [
        [
          (builtin appendByteString)
          [ (builtin sha2_256) [ (builtin sha2_256) (con bytestring #73) ] ]
        ]
        [ (builtin sha2_256) [ (builtin sha2_256) (con bytestring #) ] ]
      ]
    ]
  ]
)