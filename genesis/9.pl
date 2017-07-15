/*
 * Genesis 9
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
 * constraints for Genesis 9 (in the context of the whole Bible).
 *
 */

parent_son(ham, canaan, bible([genesis, 9, 18])).

% Noah lived 350 years after the flood
event_interval(end(deluge), death(noah), genesis_years(350), bible([genesis, 9, 28])).

% All Noah's days were 950
person_lifetime(noah, genesis_years(950), bible([genesis, 9, 29])).
