(define (problem letsdrink-simple)
        (:domain letsdrink) 
        (:objects
        arm - robot
        coffee - coffee-cup
        table - coffee-table
        coaster - drink-coaster    
        )
        (:init
          (on arm table)
          (on coffee table)
          (arm-empty)
          ; Define a new predicate if needed
          ; (path table coaster)
        )
        (:goal 
          (on coffee coaster)
        )
)