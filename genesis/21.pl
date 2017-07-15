/*
 * Genesis 21
 *
 * Copyright (C) 2013 James Hogan <james@albanarts.com>
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
 * constraints for Genesis 21 (in the context of the whole Bible).
 *
 */

% Isaac born when Abraham was 100
parents_son([abram, sarai], isaac, bible([genesis, 21, 2])).
event_interval(birth(abram), birth(isaac), genesis_years(100), bible([genesis, 21, 5])).

% Isaac weaned, Abraham held a feast (vs 8)
weaned(isaac).

% Abraham sent Hagar and Ishmael away the next day
people_moved([hagar, ishmael], kadesh, 1, wilderness(beersheba), 1, bible([genesis, 21, 14])).
event_interval(weaning(isaac), move(hagar, kadesh, 1, wilderness(beersheba), 1), time(1, day), bible([genesis, 21, 14])).

% Hagar took a wife for Ishmael from Egypt
woman(ishmaels_wife).
parent_descendent(mizraim, ishmaels_wife, bible([genesis, 21, 21])).
married(ishmael, ishmaels_wife, bible([genesis, 21, 21])).

% Abimelech and Phichol came and they made a covenant at Beersheba
man(phichol).
event(abimelech_abraham_covenant).
event_during(abimelech_abraham_covenant, Period, bible([genesis, 21, 32])) :-
	member(Period, [lifetime(abimelech), lifetime(phichol), dwell(abram, kadesh, 1)]).

% They appear to be Philistines
parent_descendent(philistim, abimelech, bible([genesis, 21, 32])).
parent_descendent(philistim, phichol, bible([genesis, 21, 32])).

% Abraham stayed in Philistines land for many days
