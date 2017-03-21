/*
 * Exodus 2
 *
 * Copyright (C) 2017 James Hogan <james@albanarts.com>
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
 * constraints for Exodus 2 (in the context of the whole Bible).
 *
 */

% Reuel implied to be a midianite
parent_descendent(midian, reuel, bible([exodus, 2, 16])).

woman(zipporah).
% See Numbers 10:26 regarding reuel likely being Zippora's grandfather
parent_descendent(reuel, zipporah, bible([exodus, 2, 21])).
married(moses, zipporah, bible([exodus, 2, 21])).

parents_son([moses, zipporah], gershom, bible([exodus, 2, 22])).
