/*
 * Genesis 20
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
 * constraints for Genesis 20 (in the context of the whole Bible).
 *
 */

% Abraham, Sarah, Ishmael, Hagar traveled to Kadesh.
people_group(abraham_kadesh, [abram, sarai, ishmael, hagar]).
people_moved(group(abraham_kadesh), plain_of_mamre, 1, kadesh, 1, bible([genesis, 20, 1])).

% Abimelech
man(abimelech).

% Sarah is the daughter of Abraham's father, but not his mother.
parent_child(terah, sarai, bible([genesis, 20, 12])).
