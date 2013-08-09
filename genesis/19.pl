/*
 * Genesis 19
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
 * Chron facts defining events, periods, geneologies, and chronological
 * constraints for Genesis 19 (in the context of the whole Bible).
 *
 */

% The angels reached Sodom in the evening (vs 1)

% Lot had 2 unmarried daughters
woman(lots_wife).
married(lot, lots_wife, bible([genesis, 19, 15])).
parents_daughter([lot, lots_wife], lots_daughter1, bible([genesis, 19, 8])).
parents_daughter([lot, lots_wife], lots_daughter2, bible([genesis, 19, 8])).
age_ordering([lots_daughter1, lots_daughter2], bible([genesis, 19, 8])).

% In morning, took wife and 2 daughters (vs 16)
people_group(lot_family, [lot, lots_wife, lots_daughter1, lots_daughter2]).

% Angels cannot overthrow sodom until Lot safe in Zoar
dwelt(lots_wife, sodom, 1, bible([genesis, 19, 15])).
dwelt(lots_daughter1, sodom, 1, bible([genesis, 19, 8])).
dwelt(lots_daughter2, sodom, 1, bible([genesis, 19, 8])).
people_moved(group(lot_family), sodom, 1, zoar, 1, bible([genesis, 19, 22])).
event_interval(lord_appears_to_abraham, move(lot, sodom, 1, zoar, 1), time(1, day), bible([genesis, 19])).

% LORD destroyed Sodom and Gomorrah
event(destroy(sodom)).
event(destroy(gomorrah)).
events_coincide([destroy(sodom), destroy(gomorrah), move(lot, sodom, 1, zoar, 1)],
		bible([genesis, 19, 24])).

% Lot's wife died
events_coincide([destroy(sodom), death(lots_wife)], bible([genesis, 19, 26])).

% Abraham saw the smoke the next morning
event(abraham_saw_sodom_smoke).
event_interval(destroy(sodom), abraham_saw_sodom_smoke, time(1, day), bible([genesis, 19, 28])).

% Lot left Zoar to dwell in mountain cave
people_group(lot_daughters, [lot, lots_daughter1, lots_daughter2]).
people_moved(group(lot_daughters), zoar, 1, mountain_cave, 1, bible([genesis, 19, 30])).

% Older daughter conceived with Lot
event_during(conception(moab), dwell(lot, mountain_cave, 1), bible([genesis, 19, 33])).

% Younger daughter the next day
event_during(conception(benammi), dwell(lot, mountain_cave, 1), bible([genesis, 19, 33])).
event_interval(conception(moab), conception(benammi), time(1, day), bible([genesis, 19, 35])).

% Older daughter bore son, Moab (moabites)
parents_son([lot, lots_daughter1], moab, bible([genesis, 19, 37])).
parent_descendent(moab, moabites, bible([genesis, 19, 37])).

% Younger daught bore son, Benammi (ammonites)
parents_son([lot, lots_daughter2], benammi, bible([genesis, 19, 38])).
parent_descendent(benammi, ammonites, bible([genesis, 19, 38])).
