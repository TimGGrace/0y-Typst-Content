#import "../Templates/ms-template.typ": *

#mark-scheme[
#cs-ms-table(
    questions:(
      (
        number: 1.1,
        marks: 3,
        solution: [
          $
            m &= 67 000 - 40 times t \

            F &= m a \
            therefore 99 000 &= (67 000 - 40 t) a \
            (div &40) \
            2475 &= (1675 - t) a quad quad qed
          $ 
        ]
        ),
      (
        number: 1.2,
        marks: 7,
        solution: [
          $
            2475 &= (1675 - t) a \
            a &= frac(2475, 1675 - t) \
            therefore v &= integral a "d"t = integral frac(2475, 1675 - t) "d"t \
            &= -2475 ln (1675 - t) + c \ \
            v|_(t=0) &= 6 000 = c - 2475 ln (1675 - 0) \
            therefore c &= 6 000 + 2475 ln (1675) \ &= 24 373 (5 "sf") \ \
            v &= 24373 - 2475 ln (1675 - t) \ \
            v|_(t=720) &= 24373 - 2475 ln (1675 - 720) \
            &= 7391 "ms"^(-1) (4 "sf")
          $
        ]
      ),
      (
        number: 1.3,
        marks: 4,
        solution: [
          $
            v = 8 000 &= 24373 - 2475 ln (1675 - t) \
            therefore ln (1675 - t) &= frac(24 373 - 8 000, 2475) \
            1675 - t &= e^(16373/2475) \
            t &= 1675 - e^(16373/2475) = 928.4 s (4 "sf")
          $ 
        ]
        ),
        (
          number: 1.4,
          marks: 1,
          solution: [
            The rocket does not run out of fuel.

            NOTE: The real booster stores enough fuel for 740s of burn, which means there will need to be another path taken to the moon with the faster lunar-shot.
          ]
        )
    )
)]