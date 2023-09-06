(define (domain letsdrink)

(:requirements :typing)

(:types
    location locatable - object
    bot coffee - locatable
    robot - bot)
(:predicates
    (on ?obj - locatable ?loc - location)
    (holding ?arm - locatable ?coffee - locatable)
    (arm-empty)
    (path ?location1 - location ?location2 - location)
)
(:action pick-up
  :parameters
    (?arm - bot 
     ?coffee - locatable
     ?loc - location)
:precondition 
(and 
    ; the reason why we use the same 
    ; variable loc in both lines below
    ; is to make sure it's looking at the same
    ; location.
    (on ?arm ?loc)
    (on ?coffee ?loc)
    (arm-empty)
)
:effect 
 (and 
    (not (on ?coffee ?loc))
    (holding ?arm ?coffee)
    (not (arm-empty))
 )
)

(:action drop
  :parameters 
    (?arm - bot
     ?coffee - locatable
     ?loc - location)
  :precondition 
   (and 
    (on ?arm ?loc)
    (holding ?arm ?coffee)
    ) 
 :effect 
  (and 
    (on ?coffee ?loc)
    (arm-empty)
    (not (holding ?arm ?coffee))
  )      
) 

(:action move
   :parameters 
    (?arm - bot
     ?from - coffee-table
     ?to - drink-coaster)
   :precondition 
    (and 
       (on ?arm ?from)
       (path ?from ?to)
    )
   :effect 
      (and 
        (not (on ?arm ?from))
        (on ?arm ?to)
     )  
)
)