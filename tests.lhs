This just contains boilerplate to run the tests from the interpreter

> waittest1 = timetillliftarrives 3 10 1 "Up"
> waittest2 = timetillliftarrives 3 10 1 "Down"
> waittest3 = timetillliftarrives 5 10 9 "Up"
> waittest4 = timetillliftarrives 5 10 9 "Down"

PARAM ORDER:  timetodestination startfloor destinationfloor buildingheight liftcurrentfloor liftdirection
Test 0 ought to be 3
Test 1 ought to be 4
Test 2 ought to be 23... because
... 4 to get the lift to ground and turn round
... +8 to pick the passenger
... +4 to get to the top and turn round
... +7 (12 - 5) to get from 12 down to 5
Test 3 ought to be 6

> bigtest2 = secondstodestination 8 5 12 4 "Down"

> test0 = timetodestination 5 8 12 5 "Up"
> test1 = timetodestination 5 8 12 4 "Up"
> test2 = timetodestination 8 5 12 4 "Down"
> test3 = timetodestination 2 5 1000 1 "Down"
> test4 = timetodestination 2 5 1000 999 "Up"
