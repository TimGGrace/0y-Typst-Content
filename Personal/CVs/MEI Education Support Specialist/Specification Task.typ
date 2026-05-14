#set page(
  margin:0.5cm,
)
#set par(
  first-line-indent: 1.5em,
  spacing: 2em,
  justify: true,
)
#set text(
  font: "Aptos",
  size:10pt,
)

Given the following program, what possible skills can you find that are part of your specification?

#table(columns:(1.2fr,1fr),stroke:0pt,
```python
import numpy.random as rng

class Predictor:
  __states = { }
  __maxIndex =  0
  __reward = 3
  __loss = 1

  def __init__(self, inputList, outputList):
    self.__maxIndex = len(inputList)
    for item in inputList:
      self.__states[item] = []
      
      for outState in outputList:
        for i in range(5):
          self.__states[item].append(outState)

  def predict(self,inputGiven):
    state = self.__states[inputGiven]
    
    index = rng.randint(0, len(state))
    
    return self.__states[inputGiven][index]


  def train(self,inputGiven,outputGiven,correct):
    if correct:
      for _ in range(self.__reward):
        self.__states[inputGiven].append(outputGiven)
    else:
      for _ in range(self.__loss):
        if self.__states[inputGiven].count(outputGiven) > 1:
            self.__states[inputGiven].remove(outputGiven)


class Dice:
  __faces = []

  def __init__(self):
    if rng.randint(0,2) == 0:
      self.__faces = [1, 1, 2, 2, 3, 4, 5, 6]
    else:
      self.__faces = [1, 2, 3, 4, 5, 5, 6, 6]


  def roll(self) -> int:
    index = rng.randint(0,len(self.__faces))

    return self.__faces[index]
```,
```python
def trial(model: Predictor, d: Dice) -> bool:
    roll1 = d.roll()
    guess = model.predict(roll1)
    roll2 = d.roll()
    if guess=="higher" and roll2 > roll1:
        model.train(roll1,guess,True)
        return True
    elif guess=="lower" and roll1 < roll2:
        model.train(roll1,guess,True)
        return True
    else:
        model.train(roll1,guess,False)
        return False

def main():
    die = Dice()
    model = Predictor(
      [1,2,3,4,5,6],
      ["higher","lower"]
    )
    
    print("Training...")
    for i in range(1000):
      trial(model,die)

    print("Beginning simulation")
    success = 0
    for i in range(1000):
        if trial(model,die):
            success += 1
    print("Completed 1000 training rolls.")
    print(f"{success} / 1000")
    print(f"{success/1000}% accurate")

if __name__ == "__main__":
    main()


```
)

#pagebreak()
#set page(
  flipped: true,
  margin: 1.5cm,
)
#set table(align:center)
#align(horizon)[
#table(columns:(..range(12).map(_=>0.25fr)),inset:(y:10pt),
table.cell(colspan:2,rowspan:2)[],table.cell(colspan:3)[Data],table.cell(colspan:3)[Process],table.cell(colspan:4)[Programming],
[numbers],[Arrays],[Randoms],[Iteration],[Selection],[Functions],[OOP],[Heuristics],[Ethics],[Techniques],
table.cell(colspan:2)[AQA],[4.1.1.1],[4.1.1.1],[4.1.1.8],[4.1.1.2],[4.1.1.2],[4.1.1.1+],[4.1.2.3],[4.4.4.5],[4.8],[],
table.cell(colspan:2)[OCR],[1.4.1],[1.4.2],[],[2.2.1],[2.2.1],[2.2.1],[2.2.1],[2.2.2],[1.5.2],[1.2.3],
table.cell(rowspan:2)[WJEC],[AS Level],[U1.4],[U1.5],[],[U1.9],[U1.9],[U1.9],[],[],[U1.17],[U1.9, U1.15],
[A Level],[],[U3.1],[],[],[],[],[U3.4],[],[],[],
table.cell(colspan:2)[Pearson I Alevel],[2.1 \ 8.1.1],[4.2 \ 8.1.2],[],[7.1.1],[7.1.1],[7.1.4],[13.1.1],[15.1.1],[9.1])
== Further Notes:
#grid(columns:(..range(4).map(_=>1fr)), align:top,column-gutter: 3em,
[
  General:
  - Program could be delivered at any stage. \ At its core, it requires:
    - Iteration
    - Selection
    - Arrays
],[
  AQA:
  - 'Students would benefit from \ practical experiance of programming to interfaces'
  - Applications to Big Data
  - Spec includes discussion of automation (4.4.1.11), Big O Notation (4.4.4.1/2) and types of abstraction (4.4.1.8)
],[
  OCR:
  - Explicitly mentions Software \ Development techniques

],[
  Pearson:
  - 6.2: AI
    - Specifically includes Machine Learning, including reinforcement learning.
  - 18.1 includes reference to specific python libraries, \ numpy and pandas
])
]