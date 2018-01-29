module Map

class Room
    def initialize(name, description)
      @name = name
      @description = description
      @paths = {}
    end
    
     attr_reader :name
    attr_reader :paths
    attr_reader :description

    def go(direction)
      return @paths[direction]
    end

    def add_paths(paths)
      @paths.update(paths)
    end
end


Holy = Room.new('Holy',
  """
    You decide to become holy
    choose:
    Own Religion: 42
    Join a church: 80
    """)
  
  Own = Room.new('Good_Ending',
       """
      It may be time for you to become holy.
      Your parents never really pushed religion on you as a child,
      but in order to reassure your fear of death, you could choose to believe in an afterlife.
      \n
      You decide to create your own religion.
      After all, you know something or someone told you that you were going to die. 
      You’re more qualified to make a religion than most people.
      But how are you going to manage it? You don’t have the money?
      You ride out to time square.
      You find a piece of cardboard and start attracting attention with your unusually
      deep vocal cords. Many people pull out their phones and film you. Sure you're making
      a fool of yourself, but you are spreading the word.
      \n
      You decide to take advantage of the situation by putting down a tin can to collect cash in.
      By the end of the day you’ve collected
      quite a following.
      \n
      You pray to the elusive hooded figure, promising life after death.
       You feel happy that you enlightened these people and made an impact.
      """
      )
     Church = Room.new('Good_Ending',
     """
      You pray and ask for confession
      However, you've never gotten confirmation before
      The priest in the dconfession chair judges you
      You've committed an impressive amount of sins
      But now they're all cleared from your record.
      Free at last
     """)



 Good_Ending = Room.new('Good_Ending',
  """
  
  
    You drive out of the city to view your final sunset
    You think of all that could’ve been,
    But you did make something of these final moments.
    \n
    Yet…
    You still fear death
    The sunset seems extra spectacular tonight.
    But the feeling of dread is too much to bear
    *Bzzt*
    It’s your sister. She’s sent you a text
    It’s a picture of a baby boy you didn’t even know she had
    \n
    This makes you so damn happy.
    Life goes on
    People live and die
    Time to come to the same fate as the majority of human beings have already succumbed to
    THE END
    """)
    
    Study = Room.new('study',
  """
    You studied instead of using your last moments wisely.
    Seriously!?
  """)

    
  Finished = Room.new('Bad_Ending',
  """
    You drive out of the city to view your final sunset
    You think of all that could’ve been,
    But instead you wasted these last final moments
    being as trivial and unimportant as you have always been
    THE END
  """)
  
Death = Room.new('death', 
"""
  You rush over to your friends before they go to class.
    You: Hey Wait up! I'm going to die!
    \n
    Friend 1: What kind of joke are you pulling of this time?
    You: this is not a joke. I'm literally going to die. I
    want to spend my final moments with you guys. 
    Friend 1: We've got exams tomorrow. Quit pulling my leg. I'm
    not hanging out with you tomorrow.
    \n
    Ouch 
    Theres no way that they'll hang out with you
    considering the awful timing.
    You're best friend doesn't even believe you
    But maybe, if you start a party?
   Choose:
   Party: 024
   No party: 314
   """)
      
      
      No_Party = Room.new('Bad_Ending',
      """
     No party
     Well, that was a waste of time.
     """)
     
     Party = Room.new('Bad_Ending',
     """
    Time to go out with a bang
     \n
    You collect everything:
    Doritoes...
    red solo cups...
    Mega stuffed Oreos...
    You're all good to go.
    \n
    You get out your loud speakers
    This is going to be intense
    \n
     4 hours later...
    \n
    No one comes because of exams.
    You're just the smartest person.
    """)
  
EscapePod = Room.new('escape_pod',

  """
    You decide to try the New york lottery.
    You don't have too many options
  """)
  

    Good_Pod = Room.new('Bad_Ending',
    """
      You buy a lottery ticket with high hopes % guess
      What... did you think you'd actually win?
      That's laughable
      Well, onto the bad ending
      """)
    Bad_Pod = Room.new('Good_Ending',
    """
      Wait..No you actually won
      this is so ridiculous
      There's a 1 in 1755 chance
      Fine here's your own special ending
      You win GOOD JOB!
 """)
THE_BRIDGE = Room.new('the_bridge',
"""
   You dial up her number. You know your sister will take the phone call as a victory
   for her. However, you’re going to die. Losing an argument will be a trivial victory
   by tomorrow morning.
   You call her up: *bzzt*
   *bzzt*
   No answer…
   You call again.
   *bzzt* *click*
    Sister: Look who came crawling back.
   You roll your eyes
   Choose: 'I'm sorry' : 13
   Waiting for your apology: 14
   Dominoes pizza, how can I help you?: 15
""")

Sorry = Room.new('Good_Ending',
"""
     Didn’t hear you. Can you repeat that?
	   You: (muttered)  i’m sorry
     Sister: Louder!
     You: I’M SORRY
     Sister: Heard you the first time.
     To be honest, I don’t even remember what the argument was about.
     Probably something small. You still probably wronged me, 
     so I’m glad we could make repentance. I forgive you.
   """)

    Hang = Room.new('Bad_Ending',
      """
     She hangs up on you. Nice job.
   """)
  
    Pizza = Room.new('the_bridge',
    """
      Her: I’d like a genuine apology. Extra suck up!
    """)

LaserWeaponArmory = Room.new('Laser Weapon Armory',

  """
   You start dialing in the numbers.
   With each press on your phone you feel more tense.
    You hit the call button… here goes nothing
   ???: Hello?
	 You freeze up after hearing your mother’s voice on the other end.
	 Choose:
   Tell her you're going to die: 11
   Casually talk to her: 12
   """)
    
    Tell = Room.new('Good_Ending',
    """
    You: Mom, I’m going to die
    Mother: What!? What’s happening? Are you being serious?
    You: Yes. Tomorrow you will never see me again. I don’t know what’s happening, but please trust me.
    Mother: You sound serious. As far As I know my childs not insane...
    I'll believe you.
    \n
    You've convinced your mother. Nice job!
    """)

    Casual = Room.new('Good_Ending',
    """
    You have a normal conversation.
    You never talk about your death.
    Why worry her?
    You've accomplished nothing, but atleast you've comforted yourself
    """)

CentralCorridor = Room.new('central_corridor',
    """
    You’re on the plain between life and death.
    Everything is slipping away.
    You don’t feel anything…,
    I light appears in front you. 
    What a tragedy. You have only but one day to live. Make the most of it”
    \n
    You wake up in a cold sweat.
    Thank god it’s all a dream.
    However, all is not right. A dark figure stands by your bed.
    It vanishes.
    It was not a dream. There is no denying it, you are going to die tonight.
    \n
    What about all of you hopes and dreams? What have you been educating yourself for all your life?
    You were given a lot of hope...
    All for it to be ripped away, tearing you in the process…
    \n
    You’re still comprehending the severity of the situation.
    You start to panic, but you attempt to calm yourselfwn. You attempt to collect your thoughts and accept the situation.
    \n
    You start to think about what means most to you.
    choose:
    Talk to those closest to you: 1
    Make an impact: 2
    """)
    
    People = Room.new('people',
    """
      You decide that it's best to spend your final moments with your family.
      Although you were very keen about completing you goals in life,
      one day is just not enough time.
      You want to call your mother and father, however, you do not know how they will react to the news.
      \n
      You haven’t talked to your sister for a year... what were you fighting about again? Anyway 
      it seemed very important at the time. It may be a good idea to make peace with her. 
      \n
      There’s no denying spending time with your friends would also be a viable 
      option. You’ve seen them at their weakest, and you’ve been through a lot together
      past year. However, they have never been ones for emotional breakdowns. Maybe a 
      party would be a better idea...
      choose:
      Call your parents: 4
      Call your sister: 5
      Talk to your friends: 6
      """)
      
    
    Purpose = Room.new('purpose',
      """
      It doesn't matter what. It doesn't matter how. Ever since you were
      little, you've wanted to do something to impact the world.
      \n
      Winning something could work as a fast and efficient way to impact the world
      before your inevitable demise. Although it's not the hard work = dream life you've been
      striving for, it's still an option to consider.
      \n
      It may be time for you to become holy. You’re parents never really pushed religion on
      you as a child, but in order to lessen your fear of death, you could choose to believe in
      an afterlife.
      \n
      Your exams are tomorrow, which sucks because you're going to die.
      You've been studying all week for them instead of living your life.
      That being said, you could continue to study for them.
      Maybe you're becoming a little insane? I don't think it's normal to see dark figures infront
      of your bed.
      choose:
      Win something: 8 
      Become holy: 9
      Study for your exams: 10
      """)
    
       




                  



                












Purpose.add_paths('8' => EscapePod, '9' => Holy, '10' => Study)

People.add_paths('4' => LaserWeaponArmory,  '5' => THE_BRIDGE, '6' => Death)

CentralCorridor.add_paths('1' => People , '2' => Purpose)

LaserWeaponArmory.add_paths('11' => Tell, '12' => Casual)

THE_BRIDGE.add_paths('13' => Sorry, '14' => Hang , '15' => Pizza)

EscapePod.add_paths('null' => Good_Pod, '*' => Bad_Pod)

Death.add_paths('024' => Party,
                   '314' => No_Party)

Study = Finished

Holy.add_paths('42' => Own, 
                  '80' => Church)

START = CentralCorridor


ROOM_NAMES = {
    'purpose' => Purpose,
    'people' => People,
    'central_corridor' => CentralCorridor,
    'fam' => LaserWeaponArmory,
    'the_bridge' => THE_BRIDGE,
    'escape_pod' => EscapePod,
    'death' => Death,
    'Bad_Ending' => Finished,
    'Good_Ending' => Good_Ending,
    'study' => Study,
    'Holy' => Holy,
    'START' => START
  }

 def self::load_room(session)
    # given a session, this will return the right room or nil
    return ROOM_NAMES[session[:room]]
  end

  def self::save_room(session, room)
    # store the room in the session for later, using its name
    session[:room] = ROOM_NAMES.key(room)
  end
end

