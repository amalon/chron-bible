/*
 * Genesis 1
 *
 * Copyright (C) 2012-2013 James Hogan <james@albanarts.com>
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details
 * (in the file called COPYING).
 *
 *
 * Chron facts defining events, periods, genealogies, and chronological
 * constraints for Genesis 1 (in the context of the whole Bible).
 *
 */

event(creation).
period(creation_week).
period(creation_day1).
period(creation_day2).
period(creation_day3).
period(creation_day4).
period(creation_day5).
period(creation_day6).
period(creation_day7).

% Creation week begin with creation.
events_coincide([creation, begin(creation_week)], bible([genesis, 1])).

% Creation week is made up of 7 days back to back.
period_subdivides(creation_week, CreationDays, bible([genesis, 1])) :-
	CreationDays = [creation_day1, creation_day2, creation_day3, creation_day4, creation_day5, creation_day6, creation_day7].

% All creation days were single days.
periods_len(CreationDays, time(1, day), bible([genesis, 1])) :-
	CreationDays = [creation_day1, creation_day2, creation_day3, creation_day4, creation_day5, creation_day6, creation_day7].

% Day 1
event(hovers(spirit, over(waters))).
event(creates(god, light)).

events_ordered([creation, hovers(spirit, over(waters)), creates(god, light)], bible([genesis, 1, 2])).
event_during(creates(god, light), creation_day1, bible([genesis, 1, 3])).

% Day 2

% Day 3

% Day 4

% Day 5

% Day 6

% Everything was very good at the end of day 6
events_ordered([end(creation_day6), fall(X)], bible([genesis, 1, 31])) :-
	fallen(X, _).

% Day 7

% Adam
man(adam).
unborn(adam).
event_during(birth(adam), creation_day6, bible([genesis, 1, 27])).

% Eve
woman(eve).
unborn(eve).
event_during(birth(eve), creation_day6, bible([genesis, 1, 27])).
