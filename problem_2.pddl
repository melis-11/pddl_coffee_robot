(define (problem letsdrink-put)
        (:domain letsdrink)
        (:objects
        arm - robot
        coffee - coffee
        table - location
        coaster - location
        )
        (:init 
        (on arm table)
        (on coaster)
        (arm-empty)
        (path table coaster)
        )
        (:goal (and
            (on coffee table)
        )
    ))