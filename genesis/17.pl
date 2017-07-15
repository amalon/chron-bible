/*
 * Genesis 17
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
 * constraints for Genesis 17 (in the context of the whole Bible).
 *
 */

% The LORD appeared to Abram at 99
event(abrahamic_covenant).
event_interval(birth(abram), abrahamic_covenant, genesis_years(99), bible([genesis, 17, 1])).

% Renamed Abram to Abraham (vs 5)
person_rename(abram, abraham, abrahamic_covenant, bible([genesis, 17, 5])).

% Renamed Sarai to Sarah (vs 15)
person_rename(sarai, sarah, abrahamic_covenant, bible([genesis, 17, 15])).

% Abram 99 and Ishmael 13 when circumcised
event_interval(birth(ishmael), abrahamic_covenant, genesis_years(13), bible([genesis, 17, 25])).
