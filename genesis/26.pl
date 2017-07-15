/*
 * Genesis 26
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
 * constraints for Genesis 26 (in the context of the whole Bible).
 *
 */

% Esau took 2 hittite wives

parent_descendent(hittites, berri, bible([genesis, 26, 34])).
man(berri).
parent_daughter(berri, judith, bible([genesis, 26, 34])).
married(esau, judith, bible([genesis, 26, 34])).
event_interval(birth(esau), begin(marriage(esau, judith)), genesis_years(40), bible([genesis, 26, 34])).

parent_descendent(hittites, elon, bible([genesis, 26, 34])).
man(elon).
parent_daughter(elon, bashemath, bible([genesis, 26, 34])).
married(esau, bashemath, bible([genesis, 26, 34])).
event_interval(birth(esau), begin(marriage(esau, bashemath)), genesis_years(40), bible([genesis, 26, 34])).
