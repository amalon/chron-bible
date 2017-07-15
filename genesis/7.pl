/*
 * Genesis 7
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
 * constraints for Genesis 7 (in the context of the whole Bible).
 *
 */

% Noah and the deluge

% God told Noah to get himself and his family in the Ark
% 7 days later the rain fell for 40 days and 40 nights
event(god_tells_noah_get_in_ark).
period(deluge_rain).
event_interval(god_tells_noah_get_in_ark, begin(deluge_rain), time(7, day), bible([genesis, 7, 4])).
period_len(deluge_rain, time(40, day), bible([genesis, 7, 4])).

% The flood waters came after 7 days, when Noah was 600
period(deluge).
event_interval(birth(noah), begin(deluge), genesis_years(600), bible([genesis, 7, 6])).
event_interval(god_tells_noah_get_in_ark, begin(deluge), time(7, day), bible([genesis, 7, 10])).
% fountains of great deep broken up, windows of heaven opened
% 600th year, 2nd month, 17th day
% (repeated)
event_date(begin(deluge), noah_calendar(600, 2, 17), bible([genesis, 7, 11])).

% Noah, Sons, Wife, 3 Wife's of Sons entered Ark same day
people_group(deluge_survivors, [noah, noahs_wife, shem, shems_wife,
				ham,  hams_wife, japheth, japheths_wife]).
people_dwelt(group(deluge_survivors), ark, 1, bible([genesis, 7, 13])).
events_coincide([begin(deluge), begin(dwell(Person, ark, 1))], bible([genesis, 7, 13])) :-
	person_in_group(Person, group(deluge_survivors)).

% Every living thing that breathed including man was destroyed except Noah and
% those with him on the Ark
population_bottleneck(end(deluge), group(deluge_survivors), bible([genesis, 7, 23])).

% The waters prevaled for 150 days
period_len(deluge, time(150, day), bible([genesis, 7, 24])).
