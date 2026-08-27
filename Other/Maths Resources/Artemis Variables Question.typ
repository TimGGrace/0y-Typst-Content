#import "../Templates/lib.typ": *

#show: aqa.setup-page.with(
  config: (
    level: "A-level",
    subject: "Maths",
    paper: "Artemis Question",
    materials: ( "",),
    instructions: (""),
    date: "Summer 2026",
    time: "",
    time-allowed: "NA",
    advice: (""),
    series-code: "2526",
    specification-code: "7517",
    paper-code: "Artemis",
    numbering-style: "compsci",
    hide-borders: true,
    
  )
)

#aqa.question(
  marks: none,
  question: [
    Before beginning its translunar burn, the Artemis II rocket weighed $67$ tonnes, and was travelling at $6"kms"^(-1)$.

    In order to reach the moon, the Aerojet Rocketdyne RL10B-2 engine was fired for 12 minutes. It provided a constant $99$kN of thrust whilst burning $40$kg of propellant every second.

    With so much fuel being used, mass cannot be modelled as a constant.
    ]
)
#aqa.question(
  question-number: 1.1,
  question: [
    Show that the Artemis II's acceleration during the translunar burn can be modelled as:
    $
      2475=(1675-t)a
    $
    As the burn was completed horizontally outside of the Earth's atmosphere, it can be assumed that the rocket's thrust is the only force acting upon the Artemis capsule.
  ]
)
#aqa.question(
  question-number: 1.2,
  marks: 7,
  question: [
    Hence find the velocity of the rocket after its $12$ minute burn.
  ]
)
#aqa.question(
  question-number: 1.3,
  marks: 4,
  question:[
    Artemis III will have the same properties at this point in its flight, but will need to reach a speed of $8$km/s. Calculate the necessary burn time to achieve this speed.
  ]
)
#aqa.question(
  question-number: 1.4,
  marks: 1,
  question: [
    State a modelling assumption you have made in your answer to 3.
  ]
)