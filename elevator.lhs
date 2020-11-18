This just sets Up the fac function so we can at least see something working.

> secondsperfloor = 5

> floors = 5
> startfloor = [0..floors]
> endfloor = [0..floors]
> liftfloor = [0..floors]
> directions = ["Up", "Down"]

fullarray = map secondstodestination startfloor endfloor liftfloor directions


> secondstodestination a b c d e = secondsperfloor * timetodestination a b c d e

> timetodestination startfloor destinationfloor buildingheight liftcurrentfloor liftdirection =
>   timetillliftarrives startfloor buildingheight liftcurrentfloor liftdirection
>   + traveltime startfloor destinationfloor buildingheight liftdirection

> timetillliftarrives startfloor buildingheight liftcurrentfloor liftdirection
>   | startfloor == liftcurrentfloor = 0
>   | desiredtraveldirection liftcurrentfloor startfloor == liftdirection = abs (startfloor - liftcurrentfloor)
>   | otherwise = timetobounce liftcurrentfloor liftdirection buildingheight + abs (startfloor - liftcurrentfloor)

> changedirection "Up" = "Down"
> changedirection "Down" = "Up"

> timetobounce current direction height
>   | direction == "Up" = 2 * (height - current)
>   | direction == "Down" = 2 * current

> bouncetest1 = timetobounce 2 "Up" 6
> bouncetest2 = timetobounce 2 "Down" 6


> traveltime startfloor destinationfloor buildingheight liftdirection
>   | startfloor == destinationfloor = 0
>   | desiredtraveldirection startfloor destinationfloor == liftdirection = timetillliftarrives destinationfloor buildingheight startfloor liftdirection
>   | otherwise = timetillliftarrives destinationfloor buildingheight startfloor newliftdirection
>   where newliftdirection = changedirection liftdirection

> desiredtraveldirection startfloor destinationfloor
>   | startfloor < destinationfloor = "Up"
>   | startfloor > destinationfloor = "Down"
>   | otherwise = "arrived"
