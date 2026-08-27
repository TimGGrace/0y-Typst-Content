#import "@preview/wenyuan-campaign:0.1.2": *

#show: conf.with()

#begin-stat[
  #stat.statheading("Beefy Goblin", desc: "Small humanoid")

  #stat.mainstats(ac: "11 (natural armour)", hp-dice: "6d10+12", speed: "40ft")

  #stat.ability(21, 8, 15, 2, 12, 6)
  #stat.skill("Senses", [darkvision 60ft.,Passive perception 11]) \
  #stat.skill("Languages", [Goblin]) \
  #stat.skill("Proficiency Bonus", [+2]) \
  #stat.skill("Challenge",[#stat.challenge-xp.at("2")])

  #stat.stroke()

  === Charge
  If the Beefy Goblin moves at least 20 feet straight toward a target and then hits with an attack on the same turn, the target takes an extra #stat.dice("2d8") bludeoning damage. If the target is a creature, it must succeed a DC 15 Strength saving throw or be knocked prone.
  == Actions 

  === Unarmed strike
  _Melee weapon attack:_ +7 to hit, reach 5ft., one target. _Hit:_ #stat.dice("2d8+5") bludeoning damage.
]
#begin-stat[
  #stat.statheading("Weak Goblin", desc:"Small humanoid")
  #stat.mainstats(ac:"13 (natural armour)",hp-dice:"4d8+4", speed:"30ft")
  #stat.ability(15,10,13,7,12,7)
  #stat.skill("Senses", [darkvision 60ft., Passive percention 9]) \
  #stat.skill("Languages",[Goblin]) \
  #stat.skill("Proficiency Bonus",[+2]) \
  #stat.skill("Challenge",stat.challenge(1/2)) \
  #stat.stroke()
  == Actions
  === Multiattack
  The goblin makes two attacks, each wtih a different weapon.

  === Bite
  _Melee weapon attack:_ +4 to hit, reach 5ft., one target. _Hit:_ #stat.dice("1d6+2") piercing damage.

  === Punch
  _Melee weapon attack:_ +4 to hit, reach 5ft., one target. _Hit:_ #stat.dice("1d6+2") bludeoning damage.
  
  === Jab
  _Melee weapon attack:_ +4 to hit, reach 5ft., one target. _Hit:_ #stat.dice("1d6+2") piercing damage.
  
  === Kick
  _Melee weapon attack:_ +4 to hit, reach 5ft., one target. _Hit:_ #stat.dice("1d6+2") bludeoning damage.
]
#v(3cm)
#begin-stat[
  #stat.statheading("Goblin",desc:"Small humanoid")
  #stat.mainstats(ac:"15 (natural armour)", hp-dice:"6d8+6", speed: "40ft")
  #stat.ability(12,15,13,8,12,7)
  #stat.skill("Skills",[Perception +3, Stealth +4, Survival +3]) \
  #stat.skill("Senses",[darkvision 60ft., Passive percention 9]) \
  #stat.skill("Languages",[Goblin]) \
  #stat.skill("Challenge",stat.challenge(1))
  #stat.stroke()
  === Standing Leap
  The goblin's long jump is up to 30 feet and its high jump is up to 15 feet, with or without a running start.

  == Actions
  === Multiattack
  The goblin makes two attacks: one with its bite and one unarmed strike.

  === Bite
  _Melee weapon attack:_ +3 to hit, reach 5ft., one target. _Hit:_ #stat.dice("1d6+1") piercing damage.

  === Unarmed Strike - Stunning Strike
  _Melee weapon attack:_ +3 to hit, reach 5ft., one target. _Hit:_ #stat.dice("2d4+1") piercing damage, and the target must succeed on a DC 11 Constitution saving throw or be stunned until the beginning of the goblin's next turn.

  === Unarmed Strike - Sand Attack
  _Melee weapon attack:_ +3 to hit, reach 5ft., one target. _Hit:_ #stat.dice("2d4+1") piercing damage, and the target must succeed on a DC 11 Dexterity saving throw or be blinded until the beginning of the goblin's next turn. An affected creature can use their action to end the condition early.

  === Unarmed Strike - Leg Sweep
  _Melee weapon attack:_ +3 to hit, reach 5ft., one target. _Hit:_ #stat.dice("2d4+1") bludeoning damage, and the target must succeed on a DC 11 Strength saving throw or be knocked prone.
]

