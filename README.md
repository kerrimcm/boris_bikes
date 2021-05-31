# Boris Bikes

Transport for London have come to us in order to create a network of docking stations and bikes that anyone can use. This program mimics the behaviour of the infrastructure of docking stations and bikes. 

## Getting started

`git clone https://github.com/kerrimcm/boris_bikes.git`
<br>
`cd` into the repository

## Running tests

`rspec` 

## Day 1 Progress

By the end of day one, my pair partner and I had written up User Stories to begin building out the basic functionality of the docking stations and the bike - see the document here: https://docs.google.com/document/d/1bTRJ9mylCGj5JJM_WS78D48dW9wGqcn-M96GF6QNrtU/edit?usp=sharing

We then began testing code using smaller feature tests on `irb` to see if it was working as expected. 

## Day 2 Progress

By the end of day two, my pair partner and I made some progress adding and testing new features in the program. We clarified the cycle where you run feature tests in `irb`, you then write your tests in RSpec, you then try make those tests pass and once at the 'GREEN' phase of TDD, you refactor your code and start again trying out new features. Tried my best to let the errors guide my decision making. First attemt at `raise_error` and `fail` exceptions. 

## Day 3 Progress

Covered steps 11 and 12 again with my pair partner and reached the end of step 16 by the end of the day. The program now has the functionality to accept up to 20 bikes in the docking station and throws an error past max capacity, and it won't release bikes if there aren't any in the station. Refactored to include a constant for max capacity and included private methods inside the class.
