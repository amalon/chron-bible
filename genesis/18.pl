/*
 * Genesis 18
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
 * constraints for Genesis 18 (in the context of the whole Bible).
 *
 */

% After Genesis 17
events_ordered([abrahamic_covenant, lord_appears_to_abraham], bible([genesis, 18])).

% The LORD appeared to Abraham in plains of mamre
event(lord_appears_to_abraham).
event_during(lord_appears_to_abraham, dwell(abram, plain_of_mamre, 1), bible([genesis, 18, 1])).

% Sarah had not yet conceived
events_ordered([lord_appears_to_abraham, conception(Child)], bible([genesis, 18, 12])) :-
	is_parent_child(sarai, Child, _).

% They then headed for Sodom
