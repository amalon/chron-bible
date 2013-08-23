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

% Jacob reached Laban
moved(jacob, beth_el, 1, padan_aram, 1, bible([genesis, 29, 1])).

% Laban had two daughters, Leah was older, Rachel was younger
parent_daughter(laban, leah, bible([genesis, 29, 16])).
parent_daughter(laban, rachel, bible([genesis, 29, 16])).
age_ordering([leah, rachel], bible([genesis, 29, 16])).

% After a month, Jacob served Laban 7 years for Rachel
period(serve_for(jacob, laban, rachel)).
event_interval(begin(dwell(jacob, padan_aram, 1)), begin(serve_for(jacob, laban, rachel)),
		time(Days, day), bible([genesis, 29, 14])) :-
	Days in 28..31.
period_len(serve_for(jacob, laban, rachel), time(7, year), bible([genesis, 29, 20])).

% Jacob married Leah
married(jacob, leah, bible([genesis, 29, 23])).
events_coincide([end(serve_for(jacob, laban, rachel)), begin(marriage(jacob, leah))],
		bible([genesis, 29, 21])).

% Zilpah given as Leah's handmaid
woman(zilpah).

% Jacob married Rachel too.
married(jacob, rachel, bible([genesis, 29, 28])).
event_interval(begin(marriage(jacob, leah)), begin(marriage(jacob, rachel)),
		time(7, day), bible([genesis, 29, 28])).

% Bilhah given as Rachel's handmaid
woman(bilhah).

% Jacob served Laban another 7 years for Leah
period(serve_for(jacob, laban, leah)).
period_len(serve_for(jacob, laban, leah), time(7, year), bible([genesis, 29, 30])).
events_coincide([begin(marriage(jacob, rachel)), begin(serve_for(jacob, laban, leah))],
		bible([genesis, 29, 30])).
period_during(serve_for(jacob, laban, leah), dwell(jacob, padan_aram, 1),
		bible([genesis, 29, 30])).


% Leah bore Reuben after both married
parents_son([jacob, leah], reuben, bible([genesis, 29, 32])).
events_ordered([begin(marriage(jacob, rachel)), conception(reuben)],
		bible([genesis, 29, 31])).

% Leah then bore Simeon
parents_son([jacob, leah], simeon, bible([genesis, 29, 33])).
age_ordering([reuben, simeon], bible([genesis, 29, 33])).

% Leah then bore Levi
parents_son([jacob, leah], levi, bible([genesis, 29, 34])).
age_ordering([simeon, levi], bible([genesis, 29, 34])).

% Leah then bore Judah
parents_son([jacob, leah], judah, bible([genesis, 29, 35])).
age_ordering([levi, judah], bible([genesis, 29, 35])).
