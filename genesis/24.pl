/*
 * Genesis 24
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
 * constraints for Genesis 24 (in the context of the whole Bible).
 *
 */

% Rebekah had a brother, Laban
parent_son(bethuel, laban, bible([genesis, 24, 29])).

% Isaac married Rebekah after his mother's death
married(isaac, rebekah, bible([genesis, 24, 67])).
events_ordered([death(sarai), begin(marriage(isaac, rebekah))], bible([genesis, 24, 67])).
