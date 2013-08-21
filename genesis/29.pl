/*
 * Genesis 29
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
 * constraints for Genesis 29 (in the context of the whole Bible).
 *
 */

% Laban had two daughters, Leah was older, Rachel was younger.
parent_daughter(laban, leah, bible([genesis, 29, 16])).
parent_daughter(laban, rachel, bible([genesis, 29, 16])).

% Jacob married both of them.
married(jacob, leah, bible([genesis, 29])).
married(jacob, rachel, bible([genesis, 29])).
