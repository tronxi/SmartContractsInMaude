(program
  1.0.0
  [
      [
        (lam
          f
          [
            (lam
              f
              [
                (lam s [ s s ])
                (lam
                  s (lam x [ [ f [ (lam s [ s s ]) s ] ] x ])
                )
              ]
            )
            (lam
              rec
              (lam
                z
                (lam
                  n
                  [
                    [ n z ]
                    (lam n' [ [ rec [ f z ] ] n' ])
                  ]
                )
              )
            )
          ]
        )
        (lam x x)
      ]
      (con integer 0)
    ]
)