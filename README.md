# PDDL Coffee Robot 
This repository contains a PDDL (Planning Domain Definition Language) domain and problem and problem_2 definitions for a simulated scenario where a robot needs to pick up and place a coffee cup on a table and a coaster.

## Files
domain.pddl: This file defines the PDDL domain, including types, predicates, and actions related to the scenario.
problem.pddl: This file defines a specific problem instance within the "letsdrink" domain.
problem_2.pddl: This file defines a specific problem instance within the "letsdrink" domain.

## Domain Description
The PDDL domain, named "letsdrink," represents a simple scenario involving a robot, a coffee cup, a coffee table, and a coaster. The main elements defined in the domain are as follows:

## Types
location and locatable are defined as object types.
bot and coffee are defined as subtypes of locatable.
robot is defined as a subtype of bot.

Predicates on ?obj - locatable ?loc - location: Indicates that an object is on a specific location.

holding ?arm - locatable ?coffee - locatable: Represents that the robot's arm is holding the coffee cup.

arm-empty: Indicates that the robot's arm is empty.

path ?location1 - location ?location2 - location: Specifies the existence of a path between two locations.

Action pick-up: Represents the action of the robot picking up the coffee cup from a location.

drop: Represents the action of the robot dropping the coffee cup at a location.

move: Represents the action of the robot moving from one location to another.

## Problem Description
The problem instance defined in letsdrink-problem.pddl specifies the initial state and goal for the scenario. 

In this specific problem:
The robot's arm is initially empty.
The coffee cup and the robot's arm are on the coffee table.
There is a path between the coffee table and a drink coaster.
The goal of this problem is to have the coffee cup on the coffee table and on the coaster.

## Usage
You can use this PDDL domain and problem definition with PDDL-based planning tools and solvers to generate plans for the robot to achieve the goal of placing the coffee cup on the coffee table.

## Author
This PDDL domain and problem definition were created by Melis Bintez.

## Acknowledgements
Fares Alaboud 
Dr. Andrew Coles 

## References 
[1] Fareskalaboud (no date) Fareskalaboud/LearnPDDL: [work in progress] A guide to learning, implementing and using PDDL. (updated weekly), GitHub. Available at: https://github.com/fareskalaboud/LearnPDDL (Accessed: 06 September 2023). 

[2] PDDL's Wikipedia Page




