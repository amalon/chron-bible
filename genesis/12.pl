/*
 * Genesis 12
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
 * constraints for Genesis 12 (in the context of the whole Bible).
 *
 */

% Abram moved from Haran to Canaan when he was 75, taking Sarai and Lot with him
people_group(abram_lot, [abram, lot, sarai]).
event_interval(birth(abram), move(abram, haran, 1, canaan, 1), genesis_years(75), bible([genesis, 12, 4])).
people_moved(group(abram_lot), haran, 1, canaan, 1, bible([genesis, 12, 5])).

% Famine, so Abram went to Egypt
people_moved(group(abram_lot), canaan, 1, egypt, 1, bible([genesis, 12, 10])).
