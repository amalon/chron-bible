/*
 * Genesis 13
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
 * constraints for Genesis 13 (in the context of the whole Bible).
 *
 */

% Abram, wife, and Lot left Egypt
people_moved(group(abram_lot), egypt, 1, bethel, 1, bible([genesis, 13, 1])).

% Abram and Lot separate
event(separate(abram, lot)).
events_coincide([separate(abram, lot),
		 move(lot, bethel, 1, sodom, 1),
		 people_move(group(abram), bethel, 1, plain_of_mamre, 1)],
		bible([genesis, 13, 12])).
% Lot went to Sodom
moved(lot, bethel, 1, sodom, 1, bible([genesis, 13, 12])).
% And Abram went to the plain of Mamre
people_group(abram, [abram, sarai]).
people_moved(group(abram), bethel, 1, plain_of_mamre, 1, bible([genesis, 13, 18])).
