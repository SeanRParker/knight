# Beginning
"You wake up in the woods in the afternoon, with a huge headache."

"'What is your name?' A loud voice yells from nearby."

input name

"Why hello sir #{name}? May I challenge you to a duel?"
  "But, I'm a lady."
    - "Oh, sorry, lady #{name}, may I challenge you to a duel?"
  "Why are we fighting?"
  X  - "You are trespassing on the king's hunting grounds. I'm a knight, I'm supposed to kill anyone who commits crimes against the king's property, but I like to give my foe a sporting chance."
  "No. I refuse to fight you."
    - Knight kills you anyway.

Knight points at a table with three items. A dagger, a stick, a sword.
  Pick dagger
    - He grazes you with the sword, but you manage to injure him enough that he yields.
  Pick stick
    - Are you kidding me? A stick?
    - You thump his armor and slightly annoy him. The knight cleaves you in two
    death module
  Pick sword
    - You win, unscathed, apparently your years of watching violent media has equipped you for the horrors of war.
