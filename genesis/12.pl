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
 * Chron facts defining events, periods, geneologies, and chronological
 * constraints for Genesis 12 (in the context of the whole Bible).
 *
 */

% Abram moved from Haran to Canaan when we was 75
period(abram_in_haran).
events_coincide([begin(terah_in_haran), begin(abram_in_haran)], bible([genesis, 11, 31])).
event_interval(birth(abram), end(abram_in_haran), genesis_years(75), bible([genesis, 12, 4])).

% He took Sarai and Lot with him
event_during(end(abram_in_haran), lifetime(Person), bible([genesis, 12, 5])) :-
	member(Person, [abram, sarai, lot]).
