/*
 * Genesis 28
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
 * constraints for Genesis 28 (in the context of the whole Bible).
 *
 */

% Jacob started in Beer-sheba
dwelt(jacob, beer_sheba, 1, bible([genesis, 28, 10])).

% Isaac sent Jacob to Laban in Padan-aram
events_ordered([bless(isaac, jacob), end(dwell(jacob, beer_sheba, 1))],
		bible([genesis, 28, 5])).

% Bethuel the Syrian (vs 5)

% Esau took Mahalath, daughter of Ishmael, sister of Nebajoth to be his wife
parent_daughter(ishmael, mahalath, bible([genesis, 28, 9])).
married(esau, mahalath, bible([genesis, 28, 9])).

% Because Isaac told Jacob not to marry from Canaanites and sent him to Padan-aram
events_ordered([end(dwell(jacob, beer_sheba, 1)), begin(marriage(esau, mahalath))],
		bible([genesis, 28, 6])).

% Stopped at Beth-el (previously Luz)
moved(jacob, beer_sheba, 1, beth_el, 1, bible([genesis, 28, 11])).
